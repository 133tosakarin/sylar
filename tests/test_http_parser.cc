#include "../dc/http/http_parser.h"
#include "../dc/log.h"

using namespace dc;
using namespace http;
static Logger::LoggerPtr g_logger = DC_LOG_ROOT();

const char* request_data = "GET / HTTP/1.1\r\n"
						   "Host: www.baidu.com\r\n"
						   "Content-Length: 10\r\n\r\n"
						   "1234567890";
const char* response_data = " HTTP/1.1 200 OK\r\n"
"Bdpagetype: 2\r\n"
"Bdqid: 0xdd81f9940015baeb\r\n"
"Connection: keep-alive\r\n"
"Content-Encoding: gzip\r\n"
"Content-Security-Policy: frame-ancestors 'self' https://chat.baidu.com http://mirror-chat.baidu.com https://fj-chat.baidu.com https://hba-chat.baidu.com https://hbe-chat.baidu.com https://njjs-chat.baidu.com https://nj-chat.baidu.com https://hna-chat.baidu.com https://hnb-chat.baidu.com http://debug.baidu-int.com;\r\n"
"Content-Type: text/html; charset=utf-8\r\n"
"Date: Fri, 16 Jun 2023 12:13:52 GMT\r\n"
"Isprivate: 1\r\n"
"Server: BWS/1.1\r\n"
"Set-Cookie: BDSVRTM=346; path=/\r\n"
"Set-Cookie: BD_HOME=1; path=/\r\n"
"Set-Cookie: H_PS_PSSID=38515_36551_38687_38797_38768_38792_38841_38831_38486_38816_38835_38636_38848_26350; path=/; domain=.baidu.com\r\n"
"Strict-Transport-Security: max-age=172800\r\n"
"Traceid: 1686917632035028250615961312968429648619\r\n"
"X-Ua-Compatible: IE=Edge,chrome=1\r\n"
"Transfer-Encoding: chunked\r\n\r\n"
"<html>\r\n"
"<meta http-equiv=\"refressh\"content=\"0;url=http://www.baidum.com/\">\r\n"
"</html>\r\n";
void test()
{
	HttpRequestParser parser;
	std::string tmp = request_data;
	size_t s = parser.execute(&tmp[0], tmp.size());
	DC_LOG_INFO(g_logger) << " execute ret = " << s 
		 << " has_error = " << parser.hasError()
		 << " is_finished = " << parser.isFinished()
		 << " content-length: " << parser.getContentLength()
		<< "\n" << parser.getData()->toString();
	tmp.resize(tmp.size() - s);
	DC_LOG_INFO(g_logger) << tmp;

}

void test_resp()
{
	HttpResponseParser parser;
	std::string tmp = response_data;
	size_t s = parser.execute(&tmp[0], tmp.size(),false);
	DC_LOG_ERROR(g_logger) << "execute ret = " << s
		<<  " has_error = " << parser.hasError()
		<< " is_finished = " << parser.isFinished()
		<< " total = " << tmp.size()
		<< " content_length " << parser.getContentLength();
	tmp.resize(tmp.size() - s);
	DC_LOG_INFO( g_logger) <<  parser.getData()->toString();
	DC_LOG_INFO(g_logger) << tmp;

}
int main()
{
	test();
	test_resp();
}
