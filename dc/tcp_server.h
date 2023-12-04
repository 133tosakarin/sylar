#ifndef DC_TCP_SERVER_H
#define DC_TCP_SERVER_H


#include <memory>
#include <functional>

#include "ioManager.h"
namespace dc
{
class Address;
class Socket;
class TcpServer : public  std::enable_shared_from_this<TcpServer>
{
public:
	using ptr = std::shared_ptr<TcpServer>;
	TcpServer(IOManager* woker = IOManager::GetThis(),IOManager* awoker = IOManager::GetThis());
	virtual ~TcpServer() ;

	virtual bool bind(std::shared_ptr<Address> addr);
	bool bind(const std::vector<std::shared_ptr<Address>>& addrs,std::vector<std::shared_ptr<Address>>& fails);
	virtual bool start();
	virtual void stop();


	uint64_t getReadTimeout() const { return readTimeout_;  }
	std::string getName() const { return name_; }
	void setReadTimeout( uint64_t v ) { readTimeout_ = v; }
	void setName(const std::string& v) { name_ = std::move(v); }

	bool isStop() const { return isStop_; }

protected:
	virtual void handleClient(std::shared_ptr<Socket> client);
	virtual void startAcceptr(std::shared_ptr<Socket> sock);
private:
	std::vector<std::shared_ptr<Socket>> socks_;
	IOManager* worker_;
	IOManager* aworker_;
	uint64_t readTimeout_;
	std::string name_;
	bool isStop_;

};

}// dc
#endif
