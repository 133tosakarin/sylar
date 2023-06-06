#include "fd_manager.h"
#include "hook.h"
#include <sys/stat.h>


using namespace dc;

FdCtx::FdCtx(int fd)
	: isInit_(false),
		isSocket_(false),
	isSysNonblock_(false),
	isUserNonblock_(false),
	isClosed_(false),
	fd_(fd),
	recvTimeout_(-1),
	sendTimeout_(-1)
{
	init();
}
FdCtx::~FdCtx()
{

}

bool FdCtx::init()
{
	if( isInit_ )
	{
		return true;
	}
	recvTimeout_ = -1;
	sendTimeout_ = -1;

	struct stat fd_stat;
	if( fstat(fd_, &fd_stat) == -1)
	{
		isInit_ = false;
		isSocket_ = false;
	}
	else
	{
		isInit_ = true;
		isSocket_ = S_ISSOCK(fd_stat.st_mode);
	}

	if( isSocket_ )
	{
		int flags = fcntl_f(fd_, F_GETFL, 0);
		if( !(flags & O_NONBLOCK) )
		{
			fcntl_f(fd_, F_SETFL, flags | O_NONBLOCK);		
			isSysNonblock_ = true;

		}
		else
		{
			isSysNonblock_ = false;
		}


	}
	isUserNonblock_ = false;
	isClosed_ = false;
	return isInit_;

}
void FdCtx::setTimeout(int type, uint64_t v)
{
	if( type == SO_RCVTIMEO )
	{
		recvTimeout_ = v;
	}
	else
	{
		sendTimeout_ = v;
	}

}

uint64_t FdCtx::getTimeout(int type)
{
	if( type == SO_RCVTIMEO )
	{
		return recvTimeout_;
	}
	else
	{
		return sendTimeout_;
	}
}

FdManager::FdManager()
{
	datas_.resize(64);
}

FdCtx::ptr FdManager::get(int fd, bool auto_create)
{
	{
		RWMutexType::ReadLock lock( mutex_);
		if( datas_.size() <= static_cast<size_t>(fd) )
		{
			if( !auto_create )
			{
				return nullptr;
			}
		}
		else
		{

			if( datas_[fd] || !auto_create )
			{
				return datas_[fd];
			}
		}
	}
	RWMutexType::WriteLock lock(mutex_);
	FdCtx::ptr ctx(new FdCtx(fd));
	datas_[fd] = ctx;
	return ctx;



}

void FdManager::del(int fd)
{
	RWMutexType::WriteLock lock(mutex_);
	if( datas_.size() <= static_cast<size_t>(fd) )
	{
		return ;
	}
	datas_[fd].reset();
}
