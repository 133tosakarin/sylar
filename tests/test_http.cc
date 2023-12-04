#include "../dc/http/http.h"
#include "../dc/log.h"

using namespace dc;
using namespace http;

void test()
{
	HttpRequest::ptr req(new HttpRequest);
	req->setHeader("host", "www.baidu.com");
	req->setBody("hello sylar");
	req->dump(std::cout ) << std::endl;
}

void test_resp()
{
	HttpResponse::ptr resp(new HttpResponse);
	resp->setHeader("X-X", "dc");
	resp->setBody("hello sylar");
	resp->setStatus(HttpStatus::BAD_REQUEST);
	resp->setClose(false);

	resp->dump(std::cout) << std::endl;
}
int main()
{
	test();
	test_resp();
}
