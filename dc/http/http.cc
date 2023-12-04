#include "http.h"

namespace dc
{
namespace http
{
HttpMethod StringToHttpMethod(const std::string& m)
{
#define XX(num, name, string) \
	if( strcmp(#string, m.c_str()) == 0) {\
		return HttpMethod::name; \
	}
	HTTP_METHOD_MAP(XX);
#undef XX
	return HttpMethod::INVALID_METHOD;
}

HttpMethod charsToHttpMethod(const char* m)
{
	#define XX(num, name, string) \
	if( strncmp(#string, m, strlen(#string)) == 0) {\
		return HttpMethod::name; \
	}
	HTTP_METHOD_MAP(XX);
#undef XX
	return HttpMethod::INVALID_METHOD;
}

static const char* s_method_string[]
 = {
#define XX(num, name, string) #string,
	 HTTP_METHOD_MAP(XX)
 };
#undef XX

const char* HttpMethodToString(const HttpMethod m)
{
	uint32_t idx = (uint32_t)m;
	if( idx >= sizeof(s_method_string) / sizeof(s_method_string[0]))
	{
		return "<unknown>";
	}
	return s_method_string[idx];
}

const char* HttpStatusToString(const HttpStatus s)
{
	switch(s)
	{
#define XX(code, name, msg) \
	case HttpStatus::name: \
		return #msg;
	HTTP_STATUS_MAP(XX);
#undef XX
	default :
		return "<unknown>";

	}
}
}// namespace dc
}// nameespace http
using namespace dc;
using namespace http;

HttpRequest::HttpRequest(uint8_t version, bool close)
	: method_(HttpMethod::GET),
	  version_(version),
	  close_(close),
	  path_("/")
{

}

bool CaseInsensitiveLess::operator()(const std::string& lhs, const std::string& rhs) const
{
	return strcasecmp(lhs.c_str(), rhs.c_str()) < 0;

}

std::string HttpRequest::getHeader(const std::string& key, const std::string def )
{
	auto it = headers_.find(key);
	return it == headers_.end() ? def : it->second;
}
std::string HttpRequest::getParam(const std::string& key, const std::string def )
{
	auto it = params_.find(key);
	return it == params_.end() ? def : it->second;
}
std::string HttpRequest::getCookie(const std::string& key, const std::string def )
{
	auto it = cookies_.find(key);
	return it == cookies_.end() ? def : it->second;
}

void HttpRequest::setHeader(const std::string& key, const std::string& val)
{
	headers_[key] = val;
}
void HttpRequest::setParam(const std::string& key, const std::string& val)
{
	params_[key] = val;
}
void HttpRequest::setCookie(const std::string& key, const std::string& val)
{
	cookies_[key] = val;
}

#define XX(name,key) \
	auto it = name##s_.find(key); \
	if(it != name##s_.end()) \
		name##s_.erase(it);
void HttpRequest::delHeader(const std::string& key)
{
	XX(header,key);
}
void HttpRequest::delParam(const std::string& key)
{
	XX(param,key);
}
void HttpRequest::delCookie(const std::string& key)
{
	XX(cookie,key);
}
#undef XX

#define XX(name, key, val) \
	auto it = name##s_.find(key); \
	if(it == name##s_.end()) \
		return false; \
	if( val )	\
		*val = it->second; \
	return true;
bool HttpRequest::hasHeader(const std::string& key, std::string* val)
{
	XX(header, key, val);	
}
bool HttpRequest::hasParam(const std::string& key, std::string* val)
{
	XX(param, key, val);	
}
bool HttpRequest::hasCookie(const std::string& key, std::string* val)
{
	XX(cookie, key, val);	
}
#undef XX


std::ostream& HttpRequest::dump (std::ostream& os) const
{
	os << HttpMethodToString(method_) << " "
	   << path_
	   << (query_.empty() ? "" : "?")
	   << query_
	   << (fragment_.empty() ? "" : "#")
	   << fragment_
	   << " HTTP/"
	   << ((uint32_t)(version_ >> 4))
	   << "."
	   << ((uint32_t)(version_ & 0x0f))
	   << "\r\n";
	os << "connection: " << (close_ ? "close" : "keep-alive") << "\r\n";
	for(auto& i : headers_)
	{
		if(strcasecmp(i.first.c_str(), "connection") == 0 ) continue;
		os << i.first << ": " << i.second << "\r\n";
	}

	if( !body_.empty() )
	{
		os << "content-length: " << body_.size() << "\r\n\r\n" << body_;
	}
	else
	{
		os << "\r\n";
	}
	return os;
}


std::string HttpRequest::toString() const
{
	std::stringstream ss;
	dump(ss);
	return ss.str();
}

std::string HttpResponse::toString() const
{
	std::stringstream ss;
	dump(ss);
	return ss.str();
}
HttpResponse::HttpResponse(uint8_t version, bool close)
	: status_(HttpStatus::ACCEPTED),
	  version_(version),
	  close_(close)

{
}
std::string HttpResponse::getHeader(const std::string& key, const std::string def)
{
	auto it = headers_.find(key);
	return it == headers_.end() ? def : it->second;
}

void HttpResponse::setHeader(const std::string& key, const std::string& val)
{
	headers_[key] = std::move(val);
}

void HttpResponse::delHeader(const std::string& key)
{
	auto it = headers_.find(key);
	if( it  != headers_.end() )
		headers_.erase(it);
}

bool HttpResponse::hasHeader(const std::string& key, std::string* val)
{
	auto it = headers_.find(key);
	bool ret = it != headers_.end();
	if( val )
	{
		headers_[key] = *val;	
	}
	return ret;
}

std::ostream& HttpResponse::dump(std::ostream& os) const
{
	os << "HTTP/"
	   << ((uint32_t)(version_ >> 4))
	   << "."
	   <<((uint32_t)(version_ & 0x0f))
	   << " "
	   << (uint32_t)status_
	   << " "
	   << (reason_.empty() ? HttpStatusToString(status_) : reason_)
	   << "\r\n";

	for(auto& i : headers_)
	{
		if(strcasecmp(i.first.c_str(), "connection") == 0 )
		{
			continue;
		}
		os << i.first << ": " << i.second << "\r\n";
	}
	os << "connection: " << ( close_ ? "close" : "keep-alive") << "\r\n";

	if(! body_.empty() )
	{
		os << "content-length: " << body_.size() << "\r\n\r\n" << body_;
	}
	else
	{
		os <<"\r\n";
	}

	return os;
}
std::ostream& dc::http::operator<<(std::ostream& os,const HttpResponse& r)
{
	return r.dump(os);
}
std::ostream& dc::http::operator<<(std::ostream& os,const HttpRequest& r)
{
	return r.dump(os);
}
