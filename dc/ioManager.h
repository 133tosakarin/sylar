#ifndef DC_IOMANAGER_H
#define DC_IOMANAGER_H
#include "scheduler.h"
#include "macro.h"
#include "log.h"
#include "timer.h"
#include <sys/poll.h>
namespace dc
{
class Timer;
class IOManager : public Scheduler, public TimerManager
{
public:
    using RWMutexType = RWMutex;
    using ptr = std::shared_ptr<IOManager>;
    using EventCallback = std::function<void()>;
    enum Event
    {
        kNone = 0,
        kRead = POLLIN,
        kWrite = POLLOUT,
    };
private:
    struct FdContext
    {
        using MutexType = Mutex;
        struct EventContext
        {
            Scheduler* scheduler = nullptr;//event exec's scheduler
            Fiber::ptr fiber;//event coroutine
            std::function<void()>cb;//event callback func
        };
        EventContext& getContext(Event event)
        {
            switch(event)
            {
                case kRead:
                    return read;
                case kWrite:
                    return write;
                default:
                    DC_ASSERT2(false, "getContext");
            }
        }
        void resetContext(EventContext& ctx)
        {
            ctx.scheduler = nullptr;
            ctx.fiber.reset();
            ctx.cb = nullptr;
        }
        void triggerEvent(Event event)
        {
            DC_ASSERT(events & event)
            events = (Event)(events & ~event);
            EventContext& ctx = getContext(event);
            if( ctx.cb )
            {
                ctx.scheduler->schedule(ctx.cb);
            }
            else
            {
                ctx.scheduler->schedule(ctx.fiber);
            }
            ctx.scheduler = nullptr;
        }
        EventContext read; //read event
        EventContext write; // write event
        int fd; //associated event handle
        Event events = kNone;
        MutexType mutex;
    };
protected:
    void idle() override;
	void tickle() override;
	bool stopping() override;
	bool stopping(uint64_t& timeout);
	//TimerManager
	void onTimerInsertedAtFront() override;

public:
    IOManager(size_t threads = 1, bool use_caller = true, const std::string& name = "");
    ~IOManager();

    void contextResize(size_t size);
    int addEvent(int fd, Event event, EventCallback cb = EventCallback() );
    bool delEvent(int fd, Event event);
    bool cancelEvent(int fd, Event event);
    bool cancelAll(int fd);
    static IOManager* GetThis();
private:

    int epfd_;
    int tickleFds_[2];
    std::atomic<size_t> pendingEventCount_;
    RWMutexType mutex_;
    std::vector<FdContext*>fdContexts_;


};
}
#endif
