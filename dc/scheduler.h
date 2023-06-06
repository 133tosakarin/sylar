#ifndef __DC_SCHEDULER_H__
#define __DC_SCHEDULER_H__
#include<memory>
#include"fiber.h"
#include"thread.h"
#include<list>
#include "util.h"
#include<vector>

namespace dc {
class Scheduler {
public:
	using ptr = std::shared_ptr<Scheduler>;
	using MutexType = Mutex;
	//user_caller为true会将线程纳入线程调度器中
	Scheduler(size_t threads = 1, bool use_caller = true, const std::string& name = "main");
	virtual ~Scheduler();
	const std::string& getName() const {return m_name;}

	static Scheduler* GetThis();
	static Fiber* GetMainFiber();

	void start();
	void stop();
	template<class FiberOrCb>
	void schedule(FiberOrCb fc, int thread = -1) {
		bool need_tickle = false;
		{
			MutexType::Lock lock(m_mutex);
			need_tickle = scheduleNoLock(fc, thread);
		}
		if(need_tickle) {
			tickle();
		}
	}
	template<class InputIterator>
	void schedule(InputIterator begin, InputIterator end) {
		bool need_tickle =false;
		{
			MutexType::Lock lock(m_mutex);
			while(begin != end) {
				need_tickle = scheduleNoLock(&*begin,-1) || need_tickle;
				++begin;
			}
		}
		if(need_tickle) {
			tickle();
		}
	}
protected:
	virtual void idle();
	virtual void tickle();
	void run();
	void setThis();
	bool hasIdleThreads() { return m_idleThreadCount > 0; }
	virtual bool stopping();
private:
	template<class FiberOrCb>
	bool scheduleNoLock(FiberOrCb fc, int thread) {
		bool need_tickle = m_fibers.empty();
		FiberAndThread ft(fc, thread);
		if(ft.fiber || ft.cb) {
			m_fibers.push_back(ft);
		}
		return need_tickle;
	}
private:
	struct FiberAndThread {
		Fiber::ptr fiber;
		std::function<void()> cb;
		int threadId;

		FiberAndThread(Fiber::ptr f, int thr):fiber(f), threadId(thr){}

		FiberAndThread(Fiber::ptr* f, int thr):threadId(thr) {
			fiber.swap(*f);
		}

		FiberAndThread(std::function<void()>* f, int thr): threadId(thr) {
			cb.swap(*f);
		}
		FiberAndThread(std::function<void()> f, int thr):cb(f), threadId(thr) {
		}
		FiberAndThread():threadId(-1) {}

		void reset() {
			fiber = nullptr;
			cb = nullptr;
			threadId = -1;
		}
	};
private:
	MutexType m_mutex;
	std::vector<Thread::ptr> m_threads;
	std::list<FiberAndThread> m_fibers;
	Fiber::ptr m_rootFiber;
	std::string m_name;
	//std::map<int, std::list<FiberAndThread> m_thrFibers
protected:
	std::vector<int> m_threadIds;
	size_t m_threadCount = 0;
	std::atomic<size_t> m_activeThreadCount ={ 0};
	std::atomic<size_t>  m_idleThreadCount = {0};
	bool m_stopping = true;
	bool m_autoStop = false;
	int m_rootThread = 0;
};
}
#endif
