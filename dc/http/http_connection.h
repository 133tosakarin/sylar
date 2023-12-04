#pragma once 

#include "../socket_stream.h"
#include "http.h"
#include "../socket.h"

namespace dc
{
namespace http
{
class HttpConnection : public SocketStream
{
public:
	using ptr = std::shared_ptr<HttpConnection>;
	HttpConnection(std::shared_ptr<Socket> sock, bool owner = true);

	HttpResponse::ptr recvResponse();
	int sendRequest(HttpRequest::ptr req);

};

}

}
