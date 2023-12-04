#include "socket.h"
#include "ioManager.h"
#include "fd_manager.h"
#include "log.h"
#include "macro.h"
#include "hook.h"

#include <errno.h>
#include <netinet/tcp.h>
using namespace dc;
static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
Socket::Socket(int family, int type, int protocol)
	: sock_(-1), 
	  family_(family),
	  type_(type),
	  protocol_(protocol),
	  isConnected_(false)
{
}
Socket::~Socket()
{
	close();
}

int64_t Socket::getSendTimeout()
{
	FdCtx::ptr ctx = FdMgr::GetInstance()->get(sock_);
	if( ctx )
	{
		return ctx->getTimeout(SO_SNDTIMEO);
	}
	return -1;
}
void Socket::setSendTimeout(int64_t v)
{
	struct timeval tv{v/1000, v %1000 * 1000};
	 setOption(SOL_SOCKET, SO_SNDTIMEO, tv);
}

int64_t Socket::getRecvTimeout()
{
	FdCtx::ptr ctx = FdMgr::GetInstance()->get(sock_);
	if( ctx )
	{
		return ctx->getTimeout(SO_RCVTIMEO);
	}
	return -1;

}
void Socket::setRecvTimeout(int64_t v)
{
	
	struct timeval tv{v/1000, v %1000 * 1000};
	 setOption(SOL_SOCKET, SO_RCVTIMEO, tv);
}

bool Socket::getOption(int level, int option, void* result, size_t*len)
{
	int ret = getsockopt( sock_, level, option, result, (socklen_t*)len);
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " Socket::getOption " << " errno = " << strerror( errno);
		return false;
	}
	return true;
}


bool Socket::setOption(int level, int option, const void* result, size_t len)
{			
	int ret =setsockopt( sock_, level, option, result, len);	
	if( ret )
	{
		DC_LOG_ERROR(g_logger) << " Socket::setOption " << " errno = " << strerror( errno);
		return false;
	}
	return true;
}


Socket::ptr Socket::accept()
{
	Socket::ptr sock(new Socket(family_, type_, protocol_));
	int conn = ::accept(sock_, nullptr, nullptr);
	if( conn == -1 )
	{
		DC_LOG_ERROR( g_logger) << "Socket::accept";
		return nullptr;
	}
	if( sock->init(conn))
	{
		return sock;
	}
	return nullptr;
}

bool Socket::init(int sock)
{
	FdCtx::ptr ctx = FdMgr::GetInstance()->get(sock);
	if (ctx && ctx->isSocket() && !ctx->isClose() )
	{
		sock_ = sock;
		isConnected_ = true;
		initSock();
		getLocalAddress();
		getPeerAddress();
		return true;
	}
	return false;
}

bool Socket::bind(const Address::ptr addr)
{
	if( !isValid() )
	{
		newSock();
	}
	if( addr->getFamily() != family_ )
	{
		DC_LOG_ERROR( g_logger ) << "bind sock.family"
			<< family_ << ") addr.family( " << addr->getFamily()
			<< ") not equal, addr = " << addr->toString();
		return false;
	}

	if( ::bind(sock_, addr->getAddr(),  addr->getAddrlen() ) )
	{
		DC_LOG_ERROR( g_logger ) << " bind error ";
		return false;
	}
	getLocalAddress();
	return true;
}
bool Socket::connect(const Address::ptr addr, uint64_t timeout_ms)
{
	if( !isValid() )
	{
		newSock();
	}
	if( addr->getFamily() != family_ )
	{
		DC_LOG_ERROR( g_logger ) << "bind sock.family"
			<< family_ << ") addr.family( " << addr->getFamily()
			<< ") not equal, addr = " << addr->toString();
		return false;

	}
	if( timeout_ms == (uint64_t)-1 )
	{
		if( ::connect(sock_, addr->getAddr(), addr->getAddrlen() ))
		{
			DC_LOG_ERROR( g_logger ) << "bind sock.family"
			<< family_ << ") addr.family( " << addr->getFamily()
			<< ") not equal, addr = " << addr->toString();
			close();
			return false;
		}
	}
	else
	{
		if( connect_with_timeout(sock_, addr->getAddr(), addr->getAddrlen(), timeout_ms) )
		{
			DC_LOG_ERROR( g_logger ) << "bind sock.family"
			<< family_ << ") addr.family( " << addr->getFamily()
			<< ") not equal, addr = " << addr->toString();
			close();
			return false;


		}
	}
	isConnected_ = true;
	getPeerAddress();
	getLocalAddress();
	return true;


}

bool Socket::listen(int backlog)
{
	if( !isValid() )
	{
		DC_LOG_INFO(g_logger) << "listen error sock = -1";
		return false;
	}
	if( ::listen(sock_, backlog) )
	{
		DC_LOG_ERROR( g_logger ) << "listen sock.family";
			close();
			return false;

	}
	return true;
}
bool Socket::close()
{
	if( !isConnected_ && sock_ == -1 )
	{
		return true;
	}
	isConnected_ = false;
	if( sock_ != -1 )
	{
		::close(sock_);
		sock_ = -1;
	}
	return false;
}

int Socket::send(const void* buffer, size_t length, int flags )
{
	if( isConnected() )
	{
		return ::send(sock_, buffer, length, flags);
	}
	return -1;
}
int Socket::send(const iovec* buffers, size_t length, int flags )
{
	if( isConnected() )
	{
		msghdr msg;
		memset(&msg, 0, sizeof(msg));
		msg.msg_iov = (iovec*) buffers;
		msg.msg_iovlen = length;
		return ::sendmsg(sock_, &msg, flags);
	}
	return -1;
}
int Socket::sendto(const void* buffer, size_t length, const Address::ptr to, int flags )
{
	if( isConnected() )
	{
		return ::sendto(sock_, buffer, length, flags, to->getAddr(), to->getAddrlen());
	}
	return -1;
}
int Socket::sendto(const iovec* buffers, size_t length, const Address::ptr to, int flags )
{
	if( isConnected() )
	{
		msghdr msg;
		msg.msg_iov = (iovec*)buffers;
		msg.msg_iovlen = length;
		msg.msg_name = const_cast<sockaddr*>(to->getAddr());
		msg.msg_namelen = to->getAddrlen();
		return ::sendmsg(sock_, &msg, flags);
	}
	return -1;
}

int Socket::recv( void* buffer, size_t length, int flags )
{
	if( isConnected() )
	{
		return ::recv(sock_, buffer, length, flags );
	}
	return -1;
}
int Socket::recv( iovec* buffers, size_t length, int flags )
{
	if( isConnected() )
	{
		DC_LOG_INFO(g_logger) << "recv msg from " << sock_;
		msghdr msg;
		msg.msg_iov = buffers;
		msg.msg_iovlen = length;
		return ::recvmsg(sock_, &msg, flags);
	}
	return -1;
}
int Socket::recvfrom( void* buffer, size_t length,  Address::ptr from, int flags )
{
	if( isConnected() )
	{
		socklen_t len =  from->getAddrlen();
		return ::recvfrom(sock_,buffer, length, flags, const_cast<sockaddr*>(from->getAddr()),&len);
	}
	return -1;

}
int Socket::recvfrom( iovec* buffers, size_t length,  Address::ptr from, int flags )
{
	if( isConnected() )
	{
		msghdr msg;
		msg.msg_iov = (iovec*)buffers;
		msg.msg_iovlen = length;
		msg.msg_name = const_cast<sockaddr*>(from->getAddr());
		msg.msg_namelen = from->getAddrlen();
		return ::recvmsg(sock_, &msg, flags);

	}
	return -1;
}

Address::ptr Socket::getPeerAddress()
{
	if( peerAddress_ )
	{
		return peerAddress_;
	}
	Address::ptr ret;
	switch(family_ )
	{
		case AF_INET:
			ret.reset(new IPv4Address());
			break;
		case AF_INET6:
			ret.reset(new IPv6Address());
			break;
		case AF_UNIX:
			ret.reset(new UnixAddress());
			break;
		default:
			ret.reset(new UnknownAddress(family_));
			break;

	}
	socklen_t addrlen = ret->getAddrlen();
	if( getpeername(sock_, const_cast<sockaddr*>(ret->getAddr()), &addrlen) )
	{
		DC_LOG_ERROR( g_logger) << " getPeerAddress ";
		return Address::ptr(new UnknownAddress(family_));
	}
	if( family_ == AF_UNIX )
	{
		UnixAddress::ptr addr = std::dynamic_pointer_cast<UnixAddress>(ret);
		addr->setAddrlen(addrlen);
	}
	peerAddress_ = ret;
	return peerAddress_;
}
Address::ptr Socket::getLocalAddress()
{
	if( localAddress_ )
	{
		return localAddress_;
	}
	Address::ptr ret;
	switch(family_ )
	{
		case AF_INET:
			ret.reset(new IPv4Address());
			break;
		case AF_INET6:
			ret.reset(new IPv6Address());
			break;
		case AF_UNIX:
			ret.reset(new UnixAddress());
			break;
		default:
			ret.reset(new UnknownAddress(family_));
			break;

	}
	socklen_t addrlen = ret->getAddrlen();
	if( getsockname(sock_, const_cast<sockaddr*>(ret->getAddr()), &addrlen) )
	{
		DC_LOG_ERROR( g_logger) << " getPeerAddress ";
		return Address::ptr(new UnknownAddress(family_));
	}
	if( family_ == AF_UNIX )
	{
		UnixAddress::ptr addr = std::dynamic_pointer_cast<UnixAddress>(ret);
		addr->setAddrlen(addrlen);
	}
	localAddress_ = ret;
	return localAddress_;
}
inline bool Socket::isValid() const
{
	return sock_ != -1;
}
int Socket::getError()
{
	int error = 0;
	size_t len = sizeof(error);
	int ret = getOption(SOL_SOCKET, SO_ERROR, &error, &len);
	if( ret )
	{
		return -1;
	}
	return error;
}
std::ostream& Socket::dump(std::ostream& os) const
{
	os <<"[Socket sock = " << sock_
	   <<" is_connected=" << isConnected_
	   <<" family_ = " << family_
	   << "type = " << type_
	   << "protocol_ " << protocol_;
	if( localAddress_ )
	{
		os << "localAddress_ = "<< localAddress_->toString();
	}
	if( peerAddress_ )
	{
		os << " peerAddress_ = " << peerAddress_->toString();
	}
	return os;
}


bool Socket::cancelRead()
{
	return IOManager::GetThis()->cancelEvent(sock_, IOManager::kRead);
}
bool Socket::cancelWrite()
{
	return IOManager::GetThis()->cancelEvent(sock_, IOManager::kWrite);
}
bool Socket::cancelAccept()
{
	return cancelRead();
}
bool Socket::cancelAll()
{
	return IOManager::GetThis()->cancelAll(sock_);
}

void Socket::initSock()
{
	int val = 1;
	setOption(SOL_SOCKET, SO_REUSEADDR, val);
	if( type_ == SOCK_STREAM )
	{
		setOption(IPPROTO_TCP, TCP_NODELAY, val);
	}
}
void Socket::newSock()
{
	sock_ = socket(family_, type_, protocol_);
	if( DC_LICKLY(sock_ != -1) )
	{
		initSock();
	}
	else
	{
		DC_LOG_ERROR(g_logger) << "socket(" << family_
			<< ", " << type_ << ", " << protocol_ << ") errno = "
			<< errno << " errstr = " << strerror(errno);
		

	}
}

Socket::ptr Socket::CreateTcp(Address::ptr address)
{
	Socket::ptr sock(new Socket(address->getFamily(), kTCP, 0));
	return sock;
}
Socket::ptr Socket::CreateUdp(Address::ptr address)
{
	return Socket::ptr(new Socket(address->getFamily(), kUDP, 0));
}

Socket::ptr Socket::CreateTcpSocket()
{
	return Socket::ptr(new Socket(kIPv4, kTCP, 0));
}
Socket::ptr Socket::CreateUdpSocket()
{
	return Socket::ptr(new Socket(kIPv4, kUDP, 0));
}

Socket::ptr Socket::CreateUnixTcpSocket()
{
	return Socket::ptr(new Socket(kUnix, kTCP, 0));
}
Socket::ptr Socket::CreateUnixUdaSocket()
{
	return Socket::ptr(new Socket(kUnix, kUDP, 0));
}

Socket::ptr Socket::CreateTcpSocket6()
{
	
	return Socket::ptr(new Socket(kIPv6, kTCP, 0));
}

Socket::ptr Socket::CreateUdpSocket6()
{
	
	return Socket::ptr(new Socket(kIPv6, kUDP, 0));
}

std::ostream& dc::operator<<(std::ostream& os, const Socket& addr)
{
	return addr.dump(os);	
}
