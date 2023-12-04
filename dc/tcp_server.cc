#include "tcp_server.h"
#include "address.h"
#include"config.h"
#include"socket.h"

using namespace dc;
static ConfigVar<uint64_t>::ptr g_tcp_server_read_timeout = 
	Config::Lookup("tcp_server.read_timeout", (uint64_t)(60* 1000*2),"tcp server read timeout");

static Logger::LoggerPtr g_logger = DC_LOG_NAME("system");
TcpServer::TcpServer(IOManager* woker,IOManager* awoker )
	: worker_(woker),
	  aworker_(awoker),
	  readTimeout_(g_tcp_server_read_timeout->getValue()),
	  name_("dc/1.0.0"),
	  isStop_(true)
{
}

TcpServer::~TcpServer()
{
	for(auto& i : socks_)
	{
		i->close();
	}
	socks_.clear();
}
bool TcpServer::bind(std::shared_ptr<Address> addr)
{
	std::vector<Address::ptr> addrs, fails;
	addrs.push_back(addr);

	return bind(addrs, fails);
}
bool TcpServer::bind(const std::vector<std::shared_ptr<Address>>& addrs,std::vector<std::shared_ptr<Address>>& fails)
{
	for( auto& addr : addrs )
	{
		Socket::ptr sock = Socket::CreateTcp(addr);
		if( !sock->bind(addr))
		{
			DC_LOG_ERROR(g_logger) << "bind fail errno = "
				<< errno << " errstr = " << strerror(errno)
				<< " addr = " << addr->toString();
			fails.push_back(addr);
			continue;
		}
		if( !sock->listen())
		{
			DC_LOG_ERROR(g_logger) << "listen fail errno = "
				<< errno << " errstr= " << strerror(errno)
				<< "addr = " << addr->toString();
			fails.push_back(addr);
			continue;
		}
		socks_.push_back(sock);
	}
	if( !fails.empty() )
	{
		socks_.clear();
		return false;
	}
	for(auto& i : socks_ )
	{
		DC_LOG_INFO(g_logger) << "server bind success: " << *i;
	}
	return true;
}
bool TcpServer::start()
{
	if( !isStop_ )
		return true;
	isStop_ = false;
	for(auto& sock : socks_ )
	{
		aworker_->schedule(std::bind(&TcpServer::startAcceptr, shared_from_this(), sock));
	}
	return true;
}
void TcpServer::stop()
{
	isStop_ = true;
	auto self = shared_from_this();
	aworker_->schedule([this, self]()
			{
				for(auto& sock : socks_ )
				{
					sock->cancelAll();
					sock->close();
				}
				socks_.clear();
			});
}


void TcpServer::handleClient(std::shared_ptr<Socket> client)
{
	DC_LOG_INFO(g_logger) << "handleClient: " << *client;
}
void TcpServer::startAcceptr(std::shared_ptr<Socket> sock)
{
	while(!isStop_)
	{
		Socket::ptr client = sock->accept();
		if( client )
		{
			worker_->schedule(std::bind(&TcpServer::handleClient, shared_from_this(), client));
		}

	}

}
