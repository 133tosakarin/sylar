
#pragma once

#include "../tcp_server.h"
#include "../socket.h"
#include "session.h"
#include "../ioManager.h"
#include "servlet.h"

namespace dc
{
namespace http
{
class HttpServer :public TcpServer
{
public:
	using ptr = std::shared_ptr<HttpServer>;
	HttpServer(bool keepalive = false,
			  IOManager* worker = IOManager::GetThis(),
			  IOManager* aworker = IOManager::GetThis());
	ServletDispatch::ptr getServletDispatch() const { return dispatch_; }
	void setServletDispatch(ServletDispatch::ptr v) { dispatch_ = v; }
protected:
	 void handleClient(std::shared_ptr<Socket> client) override;

private:
	bool alive_;
	ServletDispatch::ptr dispatch_;
};
}// http


} //dc


