

#include "http_connection.h"
#include "http_parser.h"
#include "../log.h"

using namespace dc;
using namespace dc::http;
static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
HttpConnection::HttpConnection(std::shared_ptr<Socket> sock, bool owner)
	: SocketStream(sock, owner)
{

}

HttpResponse::ptr HttpConnection::recvResponse()
{
	HttpResponseParser::ptr parser(new HttpResponseParser);
	uint64_t buffer_size = HttpRequestParser::GetHttpResponseBufferSize();
	//uint64_t buffer_size = 150;//HttpRequestParser::GetHttpRequestBufferSize();
	char* data = new char[buffer_size + 1];
	int offset = 0;
	do
	{
		int len = read(data + offset, buffer_size - offset );
		if( len <= 0 )
		{
			close();
			return nullptr;
		}
		len += offset;
		data[len] = 0;
		size_t nparse = parser->execute(data, len, false);
		//DC_LOG_INFO(g_logger) << " parser parse = " << nparse;
		if( parser->hasError() )
		{
			close();
			return nullptr;
		}

		offset = len - nparse;
		if( offset == static_cast<int>(buffer_size) )
		{
			close();
			return nullptr;
		}

		if( parser->isFinished() == 1 )
		{
			break;
		}

	}while( true );
	auto& clp = parser->getParser();
	DC_LOG_ERROR(g_logger) << "clp.chunked = " << clp.chunked << " " << parser->hasError();
	if( clp.chunked )
	{
		std::string body;
		int len = offset;
		do
		{
			do
			{
				int ret = read(data + len, buffer_size - len );
				if( ret <= 0 )
				{
					close();
					return nullptr;
				}
				len += ret;
				data[len] = 0;
				size_t nparse = parser->execute(data, len, true);
				if( parser->hasError() )
				{
					close();
					return nullptr;
				}
				len -= nparse;
				if( len == (int) buffer_size )
				{
					close();
					return nullptr;
				}
			}while(!parser->isFinished());
			len -= 2;
			DC_LOG_INFO(g_logger) << "content_len = " << clp.content_len;
			if( clp.content_len <= len )
			{
				body.append(data, clp.content_len);
				memmove(data, data + clp.content_len, len - clp.content_len);
				len -= clp.content_len;

			}
			else
			{
				body.append(data, len);
				int left = clp.content_len - len;
				while( left > 0 )
				{
					int nread = read(data, left > (int)buffer_size ? buffer_size : left );
					if( nread <= 0 )
					{
						close();
						return nullptr;
					}
					body.append(data, nread);
					left -= nread;
				}
				len = 0;
			}
		}while(!clp.chunks_done);
		parser->getData()->setBody(body);
	}
	else
	{
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
					close();
					return nullptr;
				}
			}
			parser->getData()->setBody(std::move(body));
		}
	}

	delete [] data;
	return parser->getData();
}
int HttpConnection::sendRequest(HttpRequest::ptr req)
{
	std::stringstream ss;
	ss << *req;
	std::string &&data = ss.str();
	return writeFixSize(data.c_str(), data.size());
	
}
