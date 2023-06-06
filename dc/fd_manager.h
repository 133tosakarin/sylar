#ifndef DC_FD_MANAGER_H
#define DC_FD_MANAGER_H
#include <vector>
#include <memory>
#include "thread.h"
#include "singleton.h"
namespace dc
{
class IOManager;
class FdCtx : public std::enable_shared_from_this<FdCtx>
{
public:
	using ptr = std::shared_ptr<FdCtx>;
	
	FdCtx(int fd);
	~FdCtx();

	bool init();
	bool isInit() const { return isInit_; }

	bool isSocket() const { return isSocket_; }
	bool isClose() const { return isClosed_; }

	bool close();

	void setUserNonblock(bool v) { isUserNonblock_ = v; }

	bool getUseNonblock() const { return isUserNonblock_; } 

	void setsysNonblock(bool v) { isSysNonblock_ = v; }
	bool getSysNonblock() const { return isSysNonblock_; }

	void setTimeout(int type, uint64_t v);
	uint64_t getTimeout(int type);
private:
	bool isInit_;
	bool isSocket_;
	bool isSysNonblock_;
	bool isUserNonblock_;
	bool isClosed_;
	int fd_;
	uint64_t recvTimeout_;
	uint64_t sendTimeout_;
};

class FdManager
{
public:
	using RWMutexType = RWMutex;
	FdManager();
	FdCtx::ptr get(int fd, bool auto_create = false);
	void del(int fd);
private:
	RWMutexType mutex_;
	std::vector<FdCtx::ptr> datas_;
};

using FdMgr = Singleton<FdManager>;
}
#endif
