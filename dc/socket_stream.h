#pragma once

#include "stream.h"
#include "socket.h"

namespace dc
{
class SocketStream : public Stream
{

public:
	using ptr = std::shared_ptr<SocketStream>;
	SocketStream(std::shared_ptr<Socket> sock, bool onwer = true);
	~SocketStream();
	virtual int read(void* buffer, size_t length)override;
	virtual int read(ByteArray::ptr ba, size_t length)override;
	virtual int write(const void* buffer, size_t length)override;
	virtual int write(ByteArray::ptr ba, size_t length)override;
	
	virtual void close()override;
	bool isConnected() const;
protected:
	std::shared_ptr<Socket> socket_;
	bool owner_;
private:

};
}
