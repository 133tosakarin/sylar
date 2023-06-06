#include "hook.h"
#include "ioManager.h"
#include "log.h"
#include "config.h"
#include "fd_manager.h"
#include <functional>
#include <dlfcn.h>
#include <errno.h>

namespace dc
{
static ConfigVar<int>::ptr g_tcp_connect_timeout = 
	Config::Lookup("tcp.connect.timeout", 5000, "tcp connect timeout");
static thread_local bool  t_hook_enable = false;

}
using namespace dc;
static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
#define HOOK_FUN(XX) \
	XX(sleep) \
	XX(usleep) \
	XX(nanosleep) \
	XX(socket) \
	XX(connect) \
	XX(accept) \
	XX(read) \
	XX(readv) \
	XX(recv) \
	XX(recvfrom) \
	XX(recvmsg) \
	XX(write) \
	XX(writev) \
	XX(sendmsg) \
	XX(send) \
	XX(sendto) \
	XX(close) \
	XX(fcntl) \
	XX(ioctl) \
	XX(getsockopt) \
	XX(setsockopt) 


void hook_init() 
{
	static bool is_inited = false;
	if( is_inited )
	{
		return;
	}
#define XX(name) name ## _f = (name ## _fun) dlsym(RTLD_NEXT, #name);
	HOOK_FUN(XX);
#undef XX
}

static uint64_t s_connect_timeout = -1;
struct _HookIniter
{
	_HookIniter()
	{
		hook_init(); 
		s_connect_timeout = g_tcp_connect_timeout->getValue();
		g_tcp_connect_timeout->addListener([](const int& old_value, const int& new_value)
				{
				DC_LOG_INFO( g_logger) << "tcp connect timeout change from " << old_value << " to " << new_value;
					s_connect_timeout = new_value;
				});
	}
};

static _HookIniter s_hook_initer;

bool dc::is_hook_enable()
{
	return t_hook_enable;
}

void dc::set_hook_enable(bool flag)
{
	t_hook_enable = flag;
}


struct timer_info
{
	timer_info() : cancelled(0)
	{
	}
	int cancelled;
};


template<typename OriginFun, typename ... Args>
static ssize_t do_io(int fd, OriginFun fun, const char* hook_fun_name,
		uint32_t event, int timeout_so, Args&&... args)
{
	if( !t_hook_enable )
	{
		DC_LOG_INFO(g_logger) << "no hooked <<< " << hook_fun_name;
		return fun(fd, std::forward<Args>(args)...);
	}
	FdCtx::ptr ctx = FdMgr::GetInstance()->get(fd);
	if( !ctx )
	{
		DC_LOG_INFO(g_logger) << "no hooked << " << hook_fun_name;
		return fun(fd, std::forward<Args>(args)...);
	}

	if (ctx->isClose() )
	{
		errno = EBADF;
		return -1;
	}

	if( !ctx->isSocket() || ctx->getUseNonblock() )
	{

		DC_LOG_INFO(g_logger) << "no hooked <" << hook_fun_name;
		return fun(fd, std::forward<Args>(args)...);

	}
	uint64_t to = ctx->getTimeout(timeout_so);
	std::shared_ptr<timer_info> tinfo(new timer_info);
retry:
	DC_LOG_INFO(g_logger) << "hooked" << hook_fun_name;
	ssize_t n = fun(fd, std::forward<Args>(args)...);
	while( n == -1 && errno == EINTR)
	{
		n = fun(fd, std::forward<Args>(args)...);
	}
	if( n == -1 && errno == EAGAIN )
	{
		IOManager* iom = IOManager::GetThis();
		Timer::ptr timer;
		std::weak_ptr<timer_info> winfo(tinfo);
		if( to != (uint64_t) - 1)
		{
			timer = iom->addConditionTimer(to, [winfo, fd, iom, event ]{
						auto t = winfo.lock();
						if( !t || t->cancelled)
							return;
						t->cancelled = ETIMEDOUT;
						iom->cancelEvent(fd, (IOManager::Event)(event));
					}, winfo);
		}
		int rt = iom->addEvent(fd, (IOManager::Event)(event));
		if( rt )
		{
			DC_LOG_ERROR(g_logger) << hook_fun_name << "addEvent("
					 << fd << ", " << event << ")";
			if( timer )
			{
				timer->cancel();
			}
			return -1;
		}
		else
		{

			Fiber::YieldToHold();
			if( timer )
			{
				timer->cancel();
			}
			if( tinfo->cancelled)
			{
				errno = tinfo->cancelled;
				return -1;
			}
			goto retry;
		}

	}
	return n;
}


extern "C"
{
#define XX(name) name ## _fun name ## _f = nullptr;
	HOOK_FUN(XX);
#undef XX

unsigned int sleep(unsigned int seconds)
{
	if( !t_hook_enable )
	{
		return sleep_f(seconds);
	}
	//std::cout << "hook sleep" << std::endl;
	Fiber::ptr fiber = Fiber::GetThis();
	IOManager* iom = IOManager::GetThis();
	//iom->addTimer(seconds * 1000,
	//		std::bind(&IOManager::schedule, iom, fiber));
	/*iom->addTimer(seconds * 1000,
			[iom, fiber]
			{
				iom->schedule(fiber);
			});*/
	iom->addTimer(seconds * 1000, std::bind((void(dc::Scheduler::*)(dc::Fiber::ptr, int thread))&IOManager::schedule, iom, fiber, -1));
	Fiber::YieldToHold();
	return 0;
}

int usleep(useconds_t usec)
{
	if( !t_hook_enable )
	{
		return usleep_f(usec);
	}
	Fiber::ptr fiber = Fiber::GetThis();
	IOManager* iom = IOManager::GetThis();
	//iom->addTimer(usec * 1000,
	//		std::bind(&IOManager::schedule<Fiber>, iom, fiber));
	/*iom->addTimer(usec/1000, [iom, fiber]
			{
				iom->schedule(fiber);
			});*/
	iom->addTimer(usec / 1000, std::bind((void(dc::Scheduler::*)(dc::Fiber::ptr, int thread))&IOManager::schedule, iom, fiber, -1));

	Fiber::YieldToHold();
	return 0;
}

int nanosleep(const struct timespec* req, struct timespec* rem)
{
	if( !dc::t_hook_enable )
	{
		return nanosleep_f(req, rem);	
	}
	int64_t timeout = req->tv_sec * 1000 + req->tv_nsec / 1000 /1000;
	Fiber::ptr fiber = Fiber::GetThis();
	IOManager* iom = IOManager::GetThis();
	//iom->addTimer(usec * 1000,
	//		std::bind(&IOManager::schedule<Fiber>, iom, fiber));
	/*iom->addTimer(timeout, [iom, fiber]
			{
				iom->schedule(fiber);
			});*/
	iom->addTimer(timeout, std::bind((void(dc::Scheduler::*)(dc::Fiber::ptr, int thread))&IOManager::schedule, iom, fiber, -1));
	Fiber::YieldToHold();
	return 0;

	
	
}
int socket(int domain, int type, int protocol)
{
	if( !t_hook_enable )
	{
		return socket_f(domain, type, protocol);

	}
	int fd = socket_f(domain, type, protocol);
	if( fd == -1)
	{
		return fd;
	}
	FdMgr::GetInstance()->get(fd, true);
	return fd;
}

int accept(int sockfd, struct sockaddr* addr, socklen_t* addrlen)
{
	int fd = do_io(sockfd, accept_f, "accept", IOManager::kRead, SO_RCVTIMEO, addr, addrlen);
	if( fd >= 0 )
	{
		FdMgr::GetInstance()->get(fd, true);
	}
	return fd;
	
}

int connect_with_timeout(int sockfd, const struct sockaddr* addr, socklen_t addrlen, uint64_t timeout_ms)
{
	if(!t_hook_enable)
	{
		return connect_f(sockfd, addr, addrlen);	
	}
	int ret = connect_f(sockfd, addr, addrlen);
	if( !ret )
	{
		return 0;
	}
	else if( ret != -1 || errno != EINPROGRESS )
	{
		return ret;
	}

	IOManager* iom = IOManager::GetThis();
	Timer::ptr timer;
	std::shared_ptr<timer_info> tinfo(new timer_info);
	std::weak_ptr<timer_info> winfo(tinfo);
	if( timeout_ms != (uint64_t) -1)
	{
		timer = iom->addConditionTimer(timeout_ms,[winfo, sockfd, iom]()
				{
					auto t = winfo.lock();
					if(!t || t->cancelled)
					{
						return;
					}
					t->cancelled = ETIMEDOUT;
					iom->cancelEvent(sockfd, IOManager::kWrite);
				}, winfo);
	}
	ret = iom->addEvent(sockfd, IOManager::kWrite);
	if( ret == 0 )
	{
		Fiber::YieldToHold();
		if( timer )
		{
			timer->cancel();
		}
		if( tinfo->cancelled )
		{
			errno = tinfo->cancelled;
			return -1;
		}
	}
	else
	{
		if( timer )
		{
			timer->cancel();
		}
		DC_LOG_ERROR( g_logger ) << "connect addEvent(" << sockfd << ", WRITE) error";
	}
	int error = 0;
	socklen_t len = sizeof(int);
	if( getsockopt(sockfd, SOL_SOCKET, SO_ERROR, &error, &len) )
	{
		return -1;
	}
	if( !error )
	{
		return 0;
	}
	else
	{
		errno = error;
		return -1;
	}
}

int connect(int sockfd, const struct sockaddr* addr, socklen_t addrlen)
{
	return connect_with_timeout(sockfd, addr, addrlen, s_connect_timeout);
}

ssize_t read(int fd, void* buf, size_t count)
{
	return do_io(fd, read_f, "read", IOManager::kRead, SO_RCVTIMEO, buf, count);
}

ssize_t readv(int fd, const struct iovec* iov, int iovcnt)
{
	return do_io(fd, readv_f, "readv", IOManager::kRead, SO_RCVTIMEO, iov, iovcnt);
}

ssize_t recv(int sockfd, void* buf, size_t len, int flags)
{
	return do_io(sockfd, recv_f, "recv", IOManager::kRead, SO_RCVTIMEO, buf, len, flags);

}

ssize_t recvfrom(int sockfd, void * buf, size_t len, int flags, struct sockaddr* src_addr, socklen_t *addrlen)
{
	return do_io(sockfd, recvfrom_f, "recvfrom", IOManager::kRead, SO_RCVTIMEO, buf, len, flags, src_addr, addrlen);
}

ssize_t recvmsg(int sockfd, struct msghdr* msg, int flags)
{
	return do_io(sockfd, recvmsg_f, "revmsg", IOManager::kRead, SO_RCVTIMEO, msg, flags);

}

ssize_t write(int sockfd, const  void* buf, size_t size)
{
	return do_io(sockfd, write_f, "write", IOManager::kRead, SO_SNDTIMEO, buf, size);
}

ssize_t writev(int sockfd, const struct iovec* iov, int iovcnt )
{
	return do_io(sockfd, writev_f, "writev", IOManager::kWrite, SO_SNDTIMEO, iov, iovcnt);

}

ssize_t send(int sockfd, const void* buf, size_t len, int flags )
{
	return do_io(sockfd, send_f, "send", IOManager::kWrite, SO_SNDTIMEO, buf, len, flags);
}

ssize_t sendto(int sockfd, const void* buf, size_t len, int flags, const struct sockaddr* dest_addr, socklen_t addrlen)
{
	return do_io(sockfd, sendto_f, "sendto", IOManager::kWrite, SO_SNDTIMEO, buf, len, flags, dest_addr, addrlen);

}

ssize_t sendmsg(int sockfd, const struct msghdr* msg, int flags)
{
	return do_io(sockfd, sendmsg_f, "sendmsg", IOManager::kWrite, SO_SNDTIMEO, msg, flags);
}

//close
int close(int fd)
{
	if( !t_hook_enable )
	{
		return close_f(fd);
	}
	FdCtx::ptr ctx = FdMgr::GetInstance()->get(fd);
	if( ctx )
	{
		auto iom = IOManager::GetThis();
		if( iom )
		{
			iom->cancelAll(fd);
		}
		FdMgr::GetInstance()->del(fd);
	}
	return close_f(fd);
}

int fcntl(int fd, int cmd, ...)
{
	va_list va;
	va_start(va, cmd);

	
		switch(cmd)
	{
		case F_SETFL:
			{
				int arg = va_arg(va, int);
				va_end(va);
				FdCtx::ptr ctx = FdMgr::GetInstance()->get(fd);
				if( !ctx || ctx->isClose() || !ctx->isSocket())
				{
					return fcntl_f(fd, cmd, arg);
				}
				ctx->setUserNonblock(arg & O_NONBLOCK);
				if( ctx->getSysNonblock() )
				{
					arg |= O_NONBLOCK;
				}
				else
				{
					arg&= ~O_NONBLOCK;
				}
				return fcntl_f(fd, cmd, arg);
			}
			break;
		case F_GETFL:
			{

				va_end(va);
				int arg = fcntl_f(fd, cmd);
				FdCtx::ptr ctx = FdMgr::GetInstance()->get(fd);
				if( !ctx || ctx->isClose() || !ctx->isSocket())
				{
					return arg;
				}
				if( ctx->getUseNonblock() )
				{
					return arg | O_NONBLOCK;	
				}
				else
				{
					return arg & ~O_NONBLOCK;
				}
			}
			break;
		case F_DUPFD:
		case F_DUPFD_CLOEXEC:
		case F_SETFD:
		case F_SETOWN:
		case F_SETPIPE_SZ:
			{
				int arg = va_arg(va, int);
				va_end(va);
				return fcntl_f(fd, cmd, arg);
			}
			break;			
		case F_GETFD:
		case F_GETOWN:
		case F_GETSIG:
		case F_GETLEASE:
		case F_GETPIPE_SZ:
			{
				va_end(va);
				return fcntl_f(fd, cmd);
			}
			break;	
		
		case F_SETLK:
		case F_SETLKW:
		case F_GETLK:
			{
				struct flock* arg = va_arg(va, struct flock*);
				va_end(va);
				return fcntl_f(fd, cmd, arg);
			}
			break;
		
		case F_GETOWN_EX:
		case F_SETOWN_EX:
			{
				struct f_owner_exlock* arg = va_arg(va, struct f_owner_exlock*);
				va_end(va);
				return fcntl_f(fd, cmd, arg);
			}

			break;
		default:
			va_end(va);
			return fcntl_f(fd, cmd);
			break;

	} 
}
int ioctl(int fd, unsigned long request, ...)
{
	va_list va;
	va_start(va, request);
	void* arg = va_arg(va, void*);
	va_end(va);

	if(FIONBIO == request )
	{
		bool user_nonblock = !!*(int*)arg;
		FdCtx::ptr ctx = FdMgr::GetInstance()->get(fd);
		if( !ctx || ctx->isClose() || !ctx->isSocket() )
		{
			return ioctl_f(fd, request, arg);
		}
		ctx->setUserNonblock(user_nonblock);
	}
	return ioctl_f(fd, request, arg);
}

int getsockopt(int sockfd, int level, int optname, void* optval, socklen_t * optlen)
{
	return getsockopt_f(sockfd, level, optname, optval, optlen);
}

int setsockopt(int sockfd, int level, int optname, const void* optval, socklen_t optlen)
{
	if( t_hook_enable )
	{
		return setsockopt_f(sockfd, level, optname, optval, optlen);
	}
	if( level == SOL_SOCKET )
	{
		if( optname == SO_RCVTIMEO || optname == SO_SNDTIMEO )
		{
			FdCtx::ptr ctx = FdMgr::GetInstance()->get(sockfd);
			if( ctx )
			{
				const timeval* tv = (const timeval*)optval;
				ctx->setTimeout(optname, tv->tv_sec * 1000 + tv->tv_usec /1000);
			}
		}
	}
	return setsockopt_f(sockfd, level, optname, optval, optlen);
}

};


