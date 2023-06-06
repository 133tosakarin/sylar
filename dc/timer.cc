#include "timer.h"
#include "macro.h"
#include "util.h"
#include "log.h"
using namespace dc;

bool Timer::Comparator::operator()(const Timer::ptr& lhs, const Timer::ptr& rhs) const
{
	if(!lhs && !rhs)
	{
		return false;
	}

	if( !lhs )
	{
		return true;
	}

	if( !rhs )
	{
		return false;
	}

	if( lhs->next_ < rhs->next_)
	{
		return true;
	}
	if( rhs->next_ < lhs->next_)
	{
		return false;
	}
	return lhs.get() < rhs.get();
}


Timer::Timer(uint64_t ms, Timer::Callback cb,
			 bool recurring, TimerManager* manager)
	: ms_(ms),
	  cb_(cb),
	  recurring_(recurring),
	  manager_(manager),
	  next_(GetCurrentMs() + ms_)
{
}

static void onTimer(std::weak_ptr<void>weak_cond,
					Timer::Callback cb)
{
	std::shared_ptr<void> tmp = weak_cond.lock();
	//std::cout << "exec on Timer" << std::endl;
	if( tmp )
	{
		cb();
	}
}

bool Timer::cancel()
{
	TimerManager::RWMutexType::WriteLock lock(manager_->mutex_);
	if( cb_ )
	{
		cb_ = nullptr;
		auto it = manager_->timers_.find(shared_from_this());
		DC_ASSERT(it != manager_->timers_.end());
		manager_->timers_.erase(it);
		return true;
	}
	return false;
}
bool Timer::refresh()
{
	TimerManager::RWMutexType::WriteLock lock(manager_->mutex_);
	if( !cb_ )
	{
		return false;
	}
	auto it = manager_->timers_.find(shared_from_this());
	if( it == manager_->timers_.end() )
	{
		return false;
	}
	DC_ASSERT(it != manager_->timers_.end());
	manager_->timers_.erase(it);
	next_ = GetCurrentMs() + ms_;
	manager_->timers_.insert(shared_from_this());
	return true;

			
}
bool Timer::reset( uint64_t ms, bool from_now )
{
	if( ms == ms_ && !from_now )
	{
		return true;
	}
	TimerManager::RWMutexType::WriteLock lock(manager_->mutex_);
	if( !cb_ )
	{
		return false;
	}
	auto it = manager_->timers_.find(shared_from_this());
	if( it == manager_->timers_.end() )
	{
		return false;
	}

	manager_->timers_.erase(it);
	uint64_t start = 0;
	if( from_now )
	{
		start = GetCurrentMs();
	}
	else
	{
		start = next_ - ms_;
	}
	ms_ = ms;
	next_ = start + ms_;
	manager_->addTimer(shared_from_this(), lock);
	return true;
}

TimerManager::TimerManager()
	: tickled_(false)
{

}

TimerManager::~TimerManager()
{

}

Timer::ptr TimerManager::addConditionTimer(uint64_t ms,
										Callback cb,
										std::weak_ptr<void> weak_cond,
										bool recurring)
{
	return addTimer(ms, std::bind(onTimer, weak_cond, cb), recurring);
}

Timer::ptr TimerManager::addTimer(uint64_t ms, 
								  Callback cb,
								  bool recurring)
{
	Timer::ptr timer(new Timer(ms, cb, recurring, this));
	RWMutexType::WriteLock lock(mutex_);
	addTimer(timer, lock);	

	return timer;
}




void TimerManager::addTimer(Timer::ptr timer, RWMutexType::WriteLock& lock)
{
	auto it = timers_.insert(timer).first;
	bool at_front = it == timers_.begin() && !tickled_;
	if( at_front )
	{
		tickled_ = true;	
	}

	lock.unlock();

	if( at_front )
	{
		onTimerInsertedAtFront();
	}
}

uint64_t TimerManager::getNextTimer()
{
	RWMutexType::ReadLock lock(mutex_);
	tickled_ = false;
	if( timers_.empty() )
	{
		return ~0ul;
	}

	const Timer::ptr& next = *timers_.begin();
	uint64_t now_ms = GetCurrentMs();
	if( now_ms >= next->next_ )
	{
		return 0;
	}
	else
	{
		return next->next_ - now_ms;
	}
}

void TimerManager::listExpiredCb( std::vector<Timer::Callback>& cbs )
{
	uint64_t now_ms = GetCurrentMs();
	std::vector<Timer::ptr> expired;
	{
		RWMutexType::ReadLock lock(mutex_);
		if( timers_.empty() )
		{
			return;
		}
	}

	RWMutexType::WriteLock lock(mutex_);
	Timer::ptr now_timer( new Timer(now_ms));
	auto it = timers_.lower_bound(now_timer);

	while( it != timers_.end() &&(*it)->next_ == now_ms )
	{
		++it;
	}
	//DC_ASSERT( it == timers_.end() || (*it)->next_ > now_ms);

	expired.insert( expired.begin(), timers_.begin(), it);
	timers_.erase(timers_.begin(), it);
	cbs.reserve(expired.size());

	for(auto& timer : expired )
	{
		cbs.push_back( timer->cb_ );
		if( timer->recurring_ )
		{
			timer->next_ = now_ms + timer->ms_;
			timers_.insert(timer);
		}
		else
		{
			timer->cb_ = nullptr;
		}
	}

}



