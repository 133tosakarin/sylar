#pragma once


#include <memory>
#include <functional>
#include <unordered_map>

#include <string>
#include "http.h"
#include "session.h"
#include "../thread.h"


namespace dc
{

namespace http
{
class Servlet
{
public:
	using ptr = std::shared_ptr<Servlet>;
	Servlet(const std::string& name) : name_(name) {}
	virtual ~Servlet(){}
	virtual int32_t handle(HttpRequest::ptr request,
						   HttpResponse::ptr response,
						   HttpSession::ptr session) = 0;
	const std::string& name() const { return name_; }
protected:
	std::string name_;

};// class Servlet

class FunctionServlet : public Servlet
{
public:
	using ptr = std::shared_ptr<FunctionServlet>;
	using Callback = std::function<int32_t (HttpRequest::ptr, HttpResponse::ptr, HttpSession::ptr)>;

	FunctionServlet(Callback cb);

	int32_t handle(HttpRequest::ptr request,
						   HttpResponse::ptr response,
						   HttpSession::ptr session) override;
private:
	Callback cb_;
};
class ServletDispatch : public Servlet// resovle to choose which servlet
{
public: 
	using ptr = std::shared_ptr<ServletDispatch>;
	using Entry = std::pair<std::string ,Servlet::ptr>;
	using RWMutexType = RWMutex;
	ServletDispatch();	
	void addServlet(const std::string& uri, Servlet::ptr servlet);

	void addServlet(const std::string& uri, FunctionServlet::Callback cb);

	void addGlobServlet(const std::string& uri, Servlet::ptr servlet);
	void addGlobServlet(const std::string& uri, FunctionServlet::Callback scb);

	void setDefault(Servlet::ptr v) { default_ = v; }

	Servlet::ptr getServlet(const std::string& uri);
	Servlet::ptr getGlobServlet(const std::string& uri);

	Servlet::ptr getDefault() const { return default_; }

	Servlet::ptr getMatchedServlet(const std::string& uri);
	int32_t handle(HttpRequest::ptr,HttpResponse::ptr, HttpSession::ptr)override;
private:
	std::unordered_map<std::string, Servlet::ptr> datas_;
	std::vector<Entry> globs_;

	Servlet::ptr default_;

	RWMutexType mutex_;
};


class NotFoundServlet : public Servlet
{
public:
	using ptr = std::shared_ptr<NotFoundServlet>;
	NotFoundServlet() : Servlet("NotFoundServlet") {}
	int32_t handle(HttpRequest::ptr req, HttpResponse::ptr resp, HttpSession::ptr) override;

};

} // namespace http



} // dc
