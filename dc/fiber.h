#ifndef __DC_FIBER_H__
#define __DC_FIBER_H__
#include<ucontext.h>
#include<memory>
#include"thread.h"
#include<functional>
namespace dc{
class Scheduler;
class Fiber: public std::enable_shared_from_this<Fiber> {
public:
	using ptr = std::shared_ptr<Fiber>;
	enum State {
		INIT,
		HOLD,
		EXEC,
		TERM,
		READY,
		EXCEPT
	};
private:
	Fiber();
public:
	Fiber(std::function<void()> cb, size_t stacksize = 0, bool use_caller = false );
	~Fiber();
	//重置协程函数， 并重置状态
	void reset(std::function<void()> cb);
	//切换到当前协程执行
	void swapIn();
	//切换到后台
	void swapOut();
	//类似于swapIn,将当前协程置换为目标协程
	void call();
	void back();
	uint64_t getId() const {return m_id;}
	void setState(const State& state) {m_state = state;}
	State getState() const {return m_state;}
public:
	static void SetThis(Fiber* f);
	static Fiber::ptr GetThis();
	//coroutine changes to the background, and setting the state = ready
	static void YieldToReady();
	//协程切换到后台， 并且设置为Hold状态
	static void YieldToHold();
	//总协程数
	static uint64_t ToTalFiber();
	static uint64_t GetFiberId();
	static void MainFunc();
	static void Caller();
private:
	uint64_t m_id = 0;
	uint32_t m_stacksize;
	State m_state = INIT;
	ucontext_t m_ctx;
	void* m_stack = nullptr;

	std::function<void()> m_cb;
};
}

#endif
