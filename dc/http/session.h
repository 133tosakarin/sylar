#pragma once 

#include "../socket_stream.h"
#include "http.h"
#include "../socket.h"

namespace dc
{
namespace http
{
class HttpSession : public SocketStream
{
public:
	using ptr = std::shared_ptr<HttpSession>;
	HttpSession(std::shared_ptr<Socket> sock, bool owner = true);

	HttpRequest::ptr recvRequest();
	int sendResponse(HttpResponse::ptr resp);

};

}

}
