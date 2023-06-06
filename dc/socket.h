#ifndef DC_SOCKET_H
#define DC_SOCKET_H

#include <memory>
#include "address.h"
#include "noncopyable.h"
namespace dc
{

class Socket : public std::enable_shared_from_this<Socket>, noncopyable
{
public:
	enum Type
	{
		kTCP = SOCK_STREAM,
		kUDP = SOCK_DGRAM,
	};

	enum Family
	{
		kIPv4 = AF_INET,
		kIPv6 = AF_INET6,
		kUnix = AF_UNIX,
	};
	using ptr = std::shared_ptr<Socket>;
	using weak_ptr = std::weak_ptr<Socket>;

	static Socket::ptr CreateTcp(Address::ptr address);
	static Socket::ptr CreateUdp(Address::ptr address);

	static Socket::ptr CreateTcpSocket();
	static Socket::ptr CreateUdpSocket();
	
	static Socket::ptr CreateTcpSocket6();
	static Socket::ptr CreateUdpSocket6();
	static Socket::ptr CreateUnixTcpSocket();
	static Socket::ptr CreateUnixUdaSocket();

	Socket(int family, int type, int protocol = 0);
	~Socket();

	int64_t getSendTimeout();
	void setSendTimeout(int64_t v);

	int64_t getRecvTimeout();
	void setRecvTimeout(int64_t v);

	bool getOption(int level, int option, void* result, size_t*len);
	template<class T>
	bool getOption(int level, int option, T& result)
	{
		return getOption(level, option, &result, sizeof result);
	}

	bool setOption(int level, int option, const void* result, size_t len);
	template<class T>
	bool setOption(int level, int option, const T& value)
	{
		return setOption(level, option, &value, sizeof value);
	}

	Socket::ptr accept();
	bool init(int);
	bool bind(const Address::ptr addr);
	bool connect(const Address::ptr addr, uint64_t timeout_ms = -1);

	bool listen(int backlog = SOMAXCONN);
	bool close();

	int send(const void* buffer, size_t length, int flags = 0);
	int send(const iovec* buffers, size_t length, int flags = 0);
	int sendto(const void* buffer, size_t length, const Address::ptr to, int flags = 0);
	int sendto(const iovec* buffers, size_t length, const Address::ptr to, int flags = 0);
	
	int recv( void* buffer, size_t length, int flags = 0);
	int recv( iovec* buffers, size_t length, int flags = 0);
	int recvfrom( void* buffer, size_t length,  Address::ptr from, int flags = 0);
	int recvfrom( iovec* buffers, size_t length,  Address::ptr from, int flags = 0);

	Address::ptr getPeerAddress();
	Address::ptr getLocalAddress();

	int getFamily() const { return family_; }  
	int getType() const { return type_; } 
	int getProtocol() const { return protocol_; }

	bool isConnected() const { return isConnected_; }
	bool isValid() const;

	int getError();

	std::ostream& dump(std::ostream& os) const;

	int getSocket() const { return sock_; }

	bool cancelRead();
	bool cancelWrite();
	bool cancelAccept();
	bool cancelAll();
private:

	void initSock();
	void newSock();

	int sock_;
	int family_;
	int type_;
	int protocol_;
	bool isConnected_;

	Address::ptr localAddress_;
	Address::ptr peerAddress_;




};

}
#endif
