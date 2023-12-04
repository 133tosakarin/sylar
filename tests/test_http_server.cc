#include "dc/http/http_server.h"
#include "dc/address.h"

#include "dc/log.h"

using namespace dc;
using namespace dc::http;
static Logger::LoggerPtr g_logger = DC_LOG_ROOT();
void run()
{
	HttpServer::ptr server(new HttpServer);
	Address::ptr addr = Address::LookupAnyIPAddress("0.0.0.0:8020"); 
	DC_LOG_INFO(g_logger) << " bind error " << *addr;
	while( !server->bind(addr) )
	{
		DC_LOG_INFO(g_logger) << " bind error " << *addr;
		sleep(2);
	}
	auto sd = server->getServletDispatch();
	sd->addServlet("/dc/xx", [](HttpRequest::ptr req, HttpResponse::ptr resp, HttpSession::ptr session)->int32_t {
			//DC_LOG_INFO(g_logger) << req->toString();
			resp->setBody( req->toString());
			return 0;
		});

	sd->addGlobServlet("/dc/*", [](HttpRequest::ptr req, HttpResponse::ptr resp, HttpSession::ptr session) ->int32_t {
			//DC_LOG_INFO(g_logger) << req->toString();
			resp->setBody("Glob\r\n" + req->toString());
			return 0;
		});
	server->start();
}

int main()
{
	IOManager iom(2);
	iom.schedule(run);
}
