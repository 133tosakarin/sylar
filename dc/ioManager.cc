#include "ioManager.h"
#include "thread.h"
#include <unistd.h>
#include <fcntl.h>

#include <errno.h>
#include <sys/epoll.h>

dc::Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
using namespace dc;


IOManager::IOManager(size_t threads, bool use_caller, const std::string& name)
	: Scheduler(threads, use_caller, name),
	  epfd_(::epoll_create1(EPOLL_CLOEXEC)),
	  pendingEventCount_(0)
{
	DC_ASSERT(epfd_>=0);
	int ret = ::pipe2(tickleFds_, O_CLOEXEC); 
	DC_ASSERT( ret == 0 );
	epoll_event event;
	memset(&event, 0, sizeof event);
	event.events = EPOLLIN | EPOLLET | EPOLLPRI;
	event.data.fd = tickleFds_[0];
	ret = fcntl(tickleFds_[0], F_SETFL, O_NONBLOCK);

	ret = epoll_ctl(epfd_, EPOLL_CTL_ADD, tickleFds_[0], &event);
	DC_ASSERT(ret == 0 );
	contextResize(32);
	start();

}
IOManager::~IOManager()
{
	stop();
	close(epfd_);
	close(tickleFds_[0]);
	close(tickleFds_[1]);

	for( size_t i = 0; i < fdContexts_.size(); ++i )
	{
		if( fdContexts_[i] )
		{
			delete fdContexts_[i];
		}
	}

}

void IOManager::contextResize(size_t size)
{
	fdContexts_.resize(size);
	for( size_t i = 0; i < fdContexts_.size(); ++i )
	{
		if( !fdContexts_[i] )
		{
			fdContexts_[i] = new FdContext;
			fdContexts_[i]->fd = i;
		}
	}
}
int IOManager::addEvent(int fd, Event event, EventCallback cb)
{
	FdContext* fd_ctx = nullptr;
	RWMutexType::ReadLock lock(mutex_);
	if( fdContexts_.size() > static_cast<size_t>(fd) )
	{
		fd_ctx = fdContexts_[fd];
		lock.unlock();
	}
	else
	{
		lock.unlock();
		RWMutexType::WriteLock lock2(mutex_);
		contextResize(fd * 1.5);
		fd_ctx = fdContexts_[fd];
	}

	FdContext::MutexType::Lock lock2(fd_ctx->mutex);
	if( fd_ctx->events & event )
	{
		DC_LOG_ERROR(g_logger) << "addEvent assert fd = " << fd
			<< " event = " << event
			<< " fd_ctx.event= " << fd_ctx->events; 
		DC_ASSERT(!(fd_ctx->events&event));
	}
	int op = fd_ctx->events ? EPOLL_CTL_MOD : EPOLL_CTL_ADD;
	epoll_event epevent;
	epevent.events = EPOLLET | fd_ctx->events | event;
	epevent.data.ptr = fd_ctx;
	int ret = epoll_ctl(epfd_, op, fd, &epevent);
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " epoll_ctl " << epfd_
			<< " " << op << ", " << fd << ", "
			<< epevent.events << "):"
			<< ret << " (" << errno << ") (" << strerror(errno) << ")";
		return ret;
	}
	++pendingEventCount_;
	fd_ctx->events = (Event)(fd_ctx->events | event );
	FdContext::EventContext& event_ctx = fd_ctx->getContext(event);
	DC_ASSERT(!event_ctx.scheduler && !event_ctx.fiber && !event_ctx.cb );

	event_ctx.scheduler = Scheduler::GetThis();
	if(cb)
	{
		event_ctx.cb.swap(cb);
	}
	else
	{
		event_ctx.fiber = Fiber::GetThis();
		DC_ASSERT(event_ctx.fiber->getState() == Fiber::EXEC );
	}
	return 0;
}

bool IOManager::delEvent(int fd, Event event)
{
	RWMutexType::ReadLock lock(mutex_);
	if(fdContexts_.size() <= static_cast<size_t>(fd))
	{
		return false;
	}
	FdContext* fd_ctx = fdContexts_[fd];
	lock.unlock();
	FdContext::MutexType::Lock lock2(fd_ctx->mutex);
	if(!(fd_ctx->events & event ))
	{
		return false;
	}

	Event new_events = (Event)(fd_ctx->events & ~event);
	int op = new_events ? EPOLL_CTL_MOD : EPOLL_CTL_DEL;
	epoll_event epevent;
	epevent.events = EPOLLET | new_events;
	epevent.data.ptr = fd_ctx;
	int ret = epoll_ctl(epfd_, op, fd, &epevent );
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " epoll_ctl " << epfd_
			<< " " << op << ", " << fd << ", "
			<< epevent.events << "):"
			<< ret << " (" << errno << ") (" << strerror(errno) << ")";
		return false;
	}
	--pendingEventCount_;
	fd_ctx->events = new_events;
	FdContext::EventContext& event_ctx = fd_ctx->getContext(event);
	fd_ctx->resetContext(event_ctx);
	return true;
}


bool IOManager::cancelEvent(int fd, Event event)
{
	RWMutexType::ReadLock lock(mutex_);
	if(fdContexts_.size() <= static_cast<size_t>(fd))
	{
		return false;
	}
	FdContext* fd_ctx = fdContexts_[fd];
	lock.unlock();
	FdContext::MutexType::Lock lock2(fd_ctx->mutex);
	if(!(fd_ctx->events & event ))
	{
		return false;
	}

	Event new_events = (Event)(fd_ctx->events & ~event);
	int op = new_events ? EPOLL_CTL_MOD : EPOLL_CTL_DEL;
	epoll_event epevent;
	epevent.events = EPOLLET | new_events;
	epevent.data.ptr = fd_ctx;
	int ret = epoll_ctl(epfd_, op, fd, &epevent );
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " epoll_ctl " << epfd_
			<< " " << op << ", " << fd << ", "
			<< epevent.events << "):"
			<< ret << " (" << errno << ") (" << strerror(errno) << ")";
		return false;
	}
	--pendingEventCount_;
	fd_ctx->triggerEvent(event);
	return true;
}

bool IOManager::cancelAll(int fd)
{
	RWMutexType::ReadLock lock(mutex_);
	if(fdContexts_.size() <= static_cast<size_t>(fd))
	{
		return false;
	}
	FdContext* fd_ctx = fdContexts_[fd];
	lock.unlock();
	FdContext::MutexType::Lock lock2(fd_ctx->mutex);
	if(!fd_ctx->events)
	{
		return false;
	}
	epoll_event epevent;
	int op = EPOLL_CTL_DEL;
	epevent.events =0 ;
	epevent.data.ptr = fd_ctx;
	int ret = epoll_ctl(epfd_, op, fd, &epevent );
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " epoll_ctl " << epfd_
			<< " " << op << ", " << fd << ", "
			<< epevent.events << "):"
			<< ret << " (" << errno << ") (" << strerror(errno) << ")";
		return false;
	}
	if(fd_ctx->events & kRead )
	{
		fd_ctx->triggerEvent(kRead);
		--pendingEventCount_;
	}
	if(fd_ctx->events & kWrite )
	{
		//FdContext::EventContext& event_ctx = fd_ctx->getContext(kWrite);
		fd_ctx->triggerEvent(kWrite);
		--pendingEventCount_;
	}
	DC_ASSERT(!fd_ctx->events);
	return true;

}
void IOManager::idle()
{
	DC_LOG_DEBUG(g_logger) << "idle";
	epoll_event* events = new epoll_event[64];
	std::shared_ptr<epoll_event> shared_events(events, [](epoll_event* evs ) { delete [] evs; });
	while( true )
	{
		uint64_t next_timeout = 0;
		if( stopping(next_timeout) )
		{
			if( next_timeout == ~0ull )
			{
				DC_LOG_INFO(g_logger ) << this << " had stopped";
				break;
			}
		}
		int ret = 0;
		do
		{
			static const int MAX_TIMEOUT = 3000;
			if( next_timeout != ~0ull )
			{
				next_timeout = static_cast<int>(next_timeout) > MAX_TIMEOUT ? MAX_TIMEOUT : next_timeout;
			}
			else
			{
				next_timeout = MAX_TIMEOUT;
			}
			DC_LOG_INFO(g_logger) << "next_timeout " << next_timeout;	
			ret = epoll_wait(epfd_, events, 64, (int)next_timeout);
			if( ret < 0 && errno == EINTR )
			{
				continue;
			}
			else
			{
				break;
			}
		}while(true);

		std::vector<Callback> cbs;
		listExpiredCb(cbs);
		if(!cbs.empty() )
		{
			schedule(cbs.begin(), cbs.end());
			cbs.clear();
		}
		if( ret > 0 )
		{
			for( int i = 0; i < ret; ++i )
			{
				epoll_event& event = events[i];
				if( event.data.fd == tickleFds_[0] )
				{
					uint8_t dummy[256];
					while(read(tickleFds_[0], dummy, sizeof(dummy)) > 0);
					continue;
				}
				FdContext* fd_ctx = (FdContext*)event.data.ptr;
				FdContext::MutexType::Lock lock(fd_ctx->mutex);
				if( event.events & (EPOLLERR | EPOLLHUP))
				{
					event.events |= (EPOLLIN | EPOLLOUT) & fd_ctx->events;
				}
				int real_events = kNone;
				if( event.events & EPOLLIN )
				{
					real_events |= kRead;
				}
				if( event.events & EPOLLOUT )
				{
					real_events |=kWrite;
				}
				if( (fd_ctx->events & real_events ) == kNone )
				{
					continue;
				}

				int left_events = (fd_ctx->events & ~real_events);
				int op = left_events ? EPOLL_CTL_MOD : EPOLL_CTL_DEL;
				event.events = EPOLLET | left_events;

				int rt = epoll_ctl(epfd_, op, fd_ctx->fd, &event);
				if( rt )
				{
					DC_LOG_ERROR(g_logger) << " epoll_ctl " << epfd_
						<< " " << op << ", " << fd_ctx->fd << ", "
						<< event.events << "):"
						<< rt << " (" << errno << ") (" << strerror(errno) << ")";
					continue;
				}
				if( real_events & kRead )
				{
					fd_ctx->triggerEvent(kRead);
					--pendingEventCount_;
				}
				if( real_events & kWrite )
				{
					fd_ctx->triggerEvent( kWrite );
					--pendingEventCount_;
				}

			}
			Fiber::ptr cur = Fiber::GetThis();
			auto raw_ptr = cur.get();
			cur.reset();
			raw_ptr->swapOut();
		}
		else if( ret == 0 )
		{
			DC_LOG_INFO( g_logger ) << "nothing to do";
		}
		else 
		{
				DC_LOG_ERROR( g_logger ) << "idle" << this;
				break;

		}

	}
}

void IOManager::tickle()
{
	if( !hasIdleThreads() )
	{
		return;
	}
	int ret = write(tickleFds_[1], "T", 1);
	DC_ASSERT(ret == 1);
}

bool IOManager::stopping(uint64_t& timeout)
{
	timeout = getNextTimer();
	return timeout == ~0ull
		&& pendingEventCount_ == 0
		&& Scheduler::stopping(); 

}

bool IOManager::stopping()
{
	uint64_t timeout = 0;
	return stopping(timeout);
}


void IOManager::onTimerInsertedAtFront()
{
	tickle();
}








IOManager*IOManager:: GetThis()
{
	return dynamic_cast<IOManager*>(Scheduler::GetThis());
}

