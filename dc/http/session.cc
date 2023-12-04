

#include "session.h"
#include "http_parser.h"

using namespace dc;
using namespace dc::http;
HttpSession::HttpSession(std::shared_ptr<Socket> sock, bool owner)
	: SocketStream(sock, owner)
{

}

HttpRequest::ptr HttpSession::recvRequest()
{
	HttpRequestParser::ptr parser(new HttpRequestParser);
	uint64_t buffer_size = HttpRequestParser::GetHttpRequestBufferSize();
	//uint64_t buffer_size = 150;//HttpRequestParser::GetHttpRequestBufferSize();
	char* data = new char[buffer_size];
	int offset = 0;
	do
	{
		int len = read(data + offset, buffer_size - offset );
		if( len <= 0 )
			return nullptr;
		len += offset;
		size_t nparse = parser->execute(data, len);
		if( parser->hasError() )
		{
			return nullptr;
		}

		offset = len - nparse;
		if( offset == static_cast<int>(buffer_size) )
		{
			return nullptr;
		}

		if( parser->isFinished() )
		{
			break;
		}

	}while( true );
	int64_t length = parser->getContentLength();
	if( length > 0 )
	{
		std::string body;
		body.resize(length);
		int len = 0;
		if( length >= offset )
		{
			memcpy(&body[0], data, offset);
			body.append(data, offset);
			len = offset;
		}
		else
		{
			memcpy(&body[0], data, length);
			body.append(data, length);
			len = length;
		}
		length -= offset;
		if( length > 0 )
		{
			if( readFixSize( &body[len], length) <= 0 )
			{
				return nullptr;
			}
		}
		parser->getData()->setBody(std::move(body));
	}

	delete [] data;
	return parser->getData();
}
int HttpSession::sendResponse(HttpResponse::ptr resp)
{
	std::stringstream ss;
	ss << *resp;
	std::string &&data = ss.str();
	return writeFixSize(data.c_str(), data.size());
	
}
