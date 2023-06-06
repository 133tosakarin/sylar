#ifndef DC_TIMER_H
#define DC_TIMER_H

#include <set>
#include <memory>
#include <vector>
#include "thread.h"

namespace dc
{
class TimerManager;
class Timer : public  std::enable_shared_from_this<Timer>
{
friend class TimerManager;
public:
	using ptr = std::shared_ptr<Timer>;
	using Callback = std::function<void()>;
	Timer(uint64_t ms, Callback cb, bool recurring, TimerManager* manager);

	Timer(uint64_t next) :  next_(next){}
	
	bool cancel();
	bool refresh();
	bool reset( uint64_t ms, bool from_now );
private:
	struct Comparator
	{
		bool operator() (const Timer::ptr& lhs, const Timer::ptr& rhs) const;
	};

private:
	uint64_t ms_; //执行周期
	Callback cb_;
	bool recurring_; //循环定时器
	TimerManager* manager_;
	uint64_t next_; //精确的执行时间


};


class TimerManager
{
friend class Timer;
public:
	using RWMutexType = RWMutex;
	using Callback = std::function<void()>;
	TimerManager();
	virtual ~TimerManager();

	Timer::ptr addTimer(uint64_t ms, Timer::Callback cb,
						 bool recurring = false);

	Timer::ptr addConditionTimer(uint64_t ms, Timer::Callback cb,
								 std::weak_ptr<void> weak_cond,
								 bool recurring = false);

	uint64_t getNextTimer();
	void listExpiredCb( std::vector<Callback>& cbs );
	bool hasTimer() 
	{
		RWMutexType::ReadLock lock(mutex_);
		return !timers_.empty();
	}
protected:
	virtual void onTimerInsertedAtFront() = 0;
	void addTimer(Timer::ptr val, RWMutexType::WriteLock& lock);
private:
	RWMutexType mutex_;
	bool tickled_;
	std::set<Timer::ptr, Timer::Comparator> timers_;
};

}
#endif
