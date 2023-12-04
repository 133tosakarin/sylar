#include "socket_stream.h"
#include "socket.h"


using namespace dc;

SocketStream::SocketStream(std::shared_ptr<Socket> sock, bool owner )
	: socket_(sock),
	  owner_(owner)
{

}
SocketStream::~SocketStream()
{
	if( owner_ && socket_ )
		socket_->close();
}
int SocketStream::read(void* buffer, size_t length)
{
	if( !isConnected() )
		return -1;
	return socket_->recv(buffer, length);
}
int SocketStream::read(ByteArray::ptr ba, size_t length)
{
	if( !isConnected())
		return -1;
	std::vector<iovec> iovs;
	ba->getWriteBuffers(iovs, length);
	int ret = socket_->recv(&iovs[0], iovs.size());
	if( ret > 0 )
	{
		ba->setPosition(ba->getPosition() + ret );
	}
	return ret;
}
int SocketStream::write(const void* buffer, size_t length)
{
	if( !isConnected() )
		return -1;
	return socket_->send(buffer, length);
}
int SocketStream::write(ByteArray::ptr ba, size_t length)
{
	if( !isConnected() )
		return -1;
	std::vector<iovec> iovs;
	ba->getReadBuffers(iovs, length);
	int ret = socket_->send(&iovs[0], length);
	if( ret > 0 )
	{
		ba->setPosition(ba->getPosition() + ret );
	}
	return ret;
}

void SocketStream::close()
{
}

bool SocketStream::isConnected() const
{
	return socket_ && socket_->isConnected();
}
