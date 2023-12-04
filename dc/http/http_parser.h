#ifndef DC_HTTP_HTTPPARSER_H
#define DC_HTTP_HTTPPARSER_H

#include <memory>
#include "http11_parser.h"
#include "httpclient_parser.h"
#include "http.h"
namespace dc
{
namespace http
{

class HttpRequestParser
{
public:
	using ptr = std::shared_ptr<HttpRequestParser>;
	HttpRequestParser();
	HttpRequest::ptr getData() { return data_; }
	size_t execute( char* data, size_t len);
	int hasError() const;
	int isFinished()const;
	void setError(int v) { error_ = v; }
	uint64_t getContentLength() const;
	const http_parser& getParser() const { return parser_; }
public:
	static uint64_t GetHttpRequestBufferSize();
	static uint64_t GetHttpRequestMaxBodySize();
	static uint64_t GetHttpResponseBufferSize();
	static uint64_t GetHttpResponseMaxBodySize();
private:
	mutable http_parser parser_;
	HttpRequest::ptr data_;
	//1000: invalid method
	int error_;
};

class HttpResponseParser
{
public:
	using ptr = std::shared_ptr<HttpResponseParser>;
	HttpResponseParser();
	HttpResponse::ptr getData() { return data_; }
	size_t execute(char* data, size_t len, bool chunk);
	int hasError() const;
	int isFinished()const;
	void setError(int v) { error_ = v; }
	uint64_t getContentLength() const;
	const httpclient_parser& getParser() const { return parser_; }
private:
	mutable httpclient_parser parser_;
	HttpResponse::ptr data_;
	int error_;

};





} // namespace http

}// namespace dc
#endif
