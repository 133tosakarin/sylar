#include "http_server.h"

#include "../log.h"

using namespace dc;
using namespace dc::http;

static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");

HttpServer::HttpServer(bool keepalive,
					  IOManager* worker,
					  IOManager* aworker)
	: TcpServer(worker, aworker),
	  alive_(keepalive)
{
	dispatch_.reset(new ServletDispatch);
}

void HttpServer::handleClient(Socket::ptr client)
{
	HttpSession::ptr session(new HttpSession(client));
	do
	{
		auto req = session->recvRequest();
		if( !req )
		{
			DC_LOG_WARN(g_logger) << "recv http request fail, errno = "
				 << errno << " errstr = " << strerror(errno)
				 << " client: " << *client;
			break;
		}
		HttpResponse::ptr resp(new HttpResponse(req->getVersion(), 
				req->isClose() || alive_));
		dispatch_->handle(req, resp,session);
		//DC_LOG_INFO(g_logger) << " http_server: req = " << *req << " resp = " << *resp;

		session->sendResponse(resp);
	}while(alive_);
	DC_LOG_INFO(g_logger) << *client << " has left";
	session->close();

}
