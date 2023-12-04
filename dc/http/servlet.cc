#include "servlet.h"
#include "../log.h"

#include <algorithm>
#include <fnmatch.h>
using namespace dc;
using namespace dc::http;
static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
FunctionServlet::FunctionServlet(Callback cb)
	: Servlet("FunctionServlet"), 
	  cb_(std::move(cb))
{

}

int32_t FunctionServlet::handle(HttpRequest::ptr request,HttpResponse::ptr response,HttpSession::ptr session)
{
	if(cb_)
	{
		return cb_(request, response, session);
	}
	return 0;
}

ServletDispatch::ServletDispatch()
	: Servlet("ServletDispatch"), 
	  default_(new NotFoundServlet)
{

}
int32_t ServletDispatch::handle(HttpRequest::ptr request,HttpResponse::ptr response,HttpSession::ptr session)
{
	//DC_LOG_INFO(g_logger) << "path = " << request->getPath();
	auto slt = getMatchedServlet(request->getPath());
	if( slt )
	{
		slt->handle(request, response, session);
	}
	return 0;
}


void ServletDispatch::addServlet(const std::string& uri, Servlet::ptr servlet)
{
	RWMutexType::WriteLock lock(mutex_);
	datas_[uri] = servlet;
}

void ServletDispatch::addServlet(const std::string& uri, FunctionServlet::Callback cb)
{
	RWMutexType::WriteLock lock(mutex_);
	datas_[uri].reset(new FunctionServlet(std::move(cb)));
}

void ServletDispatch::addGlobServlet(const std::string& uri, Servlet::ptr servlet)
{
	RWMutexType::WriteLock lock(mutex_);
	for(auto it = globs_.begin(); it != globs_.end(); ++it )
	{
		if( it->first == uri )
		{
			globs_.erase(it);
			break;
		}
	}
	globs_.push_back(std::make_pair(uri, servlet));
}
void ServletDispatch::addGlobServlet(const std::string& uri, FunctionServlet::Callback cb)
{

	RWMutexType::WriteLock lock(mutex_);
	addGlobServlet(uri, FunctionServlet::ptr(new FunctionServlet(std::move(cb))));
}


Servlet::ptr ServletDispatch::getServlet(const std::string& uri)
{
	RWMutexType::ReadLock lock(mutex_);
	auto it = datas_.find(uri);
	return it == datas_.end() ? nullptr : it->second;
}
Servlet::ptr ServletDispatch::getGlobServlet(const std::string& uri)
{
	RWMutexType::ReadLock lock(mutex_);
	for(auto it = globs_.begin(); it != globs_.end(); ++it )
	{
		if( it->first == uri )
			return it->second;
	}
	return nullptr;
}


Servlet::ptr ServletDispatch::getMatchedServlet(const std::string& uri)
{
	RWMutexType::ReadLock lock(mutex_);
	{
		auto it = datas_.find(uri);
		if( it != datas_.end() )
			return it->second;
	}
	for(auto it = globs_.begin(); it != globs_.end(); ++it )
	{
		if( !fnmatch(it->first.c_str(),uri.c_str(),0) )
			return it->second;
	}
	return default_;


}

int32_t NotFoundServlet::handle( HttpRequest::ptr req, HttpResponse::ptr resp, HttpSession::ptr session)
{
	static const char* RSP_BODY = "<html><head><title>404 Not Fount</title></head>"
								  "<body><center><h1>404 Not Fount</h1></center>"
								  "<hr><center>nginx/1.16.0</center></body></html>";
	resp->setStatus(HttpStatus::NOT_FOUND);
	resp->setHeader("Server", "dc/1.0.0");
	resp->setHeader("Content-Type", "text/html");
	resp->setBody(RSP_BODY);
	return 0;
}

