#ifndef DC_ADDRESS_H
#define DC_ADDRESS_H

#include <memory>
#include <string>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <iostream>
#include <sys/un.h>
#include <vector>
#include <map>
namespace dc
{
class IPAddress;
class Address
{
public:
	using ptr = std::shared_ptr<Address>;
	virtual ~Address() {}
	static Address::ptr Create(const sockaddr*, socklen_t addrlen); 	
	static bool Lookup(std::vector<Address::ptr>& result, const std::string& host, int family = AF_INET, int type = 0, int protocol = 0);

	static Address::ptr LookupAny(const std::string&, int family = AF_INET, int type = 0, int protocol = 0);


	static std::shared_ptr<IPAddress> LookupAnyIPAddress(const std::string&, int family = AF_INET, int type = 0, int protocol = 0);

	static bool GetInterfaceAddresses( std::multimap<std::string, std::pair<Address::ptr, uint16_t>>& result, int family = AF_INET);

	static bool GetInterfaceAddresses( std::vector< std::pair<Address::ptr, uint16_t>>& result, const std::string& iface,  int family = AF_INET);

	
	int getFamily() const;
	std::string toString();

	virtual const sockaddr* getAddr() const = 0;
	virtual socklen_t getAddrlen() const = 0;

	virtual std::ostream& insert(std::ostream& os) const = 0;

	bool operator<(const Address& rhs) const;
	bool operator==(const Address& rhs) const;
	bool operator!=(const Address& rhs) const;
};

class IPAddress : public Address
{
public:
	using ptr = std::shared_ptr<IPAddress>;
	static IPAddress::ptr Create(const char* address, uint16_t);
	virtual IPAddress::ptr broadcastAddress(uint32_t prefix_len) = 0;
	virtual IPAddress::ptr netwrokAddress(uint32_t prefix_len) = 0;
	virtual IPAddress::ptr subnetMask(uint32_t prefix_len) = 0;

	virtual uint16_t getPort() const = 0;
	virtual void setPort(uint16_t v) = 0;

};

class IPv4Address : public IPAddress
{
public:
	IPv4Address(uint32_t address = INADDR_ANY, uint16_t = 0);
	IPv4Address(const sockaddr_in & address);

	
	using ptr = std::shared_ptr<IPv4Address>;
	static IPv4Address::ptr Create(const char* address, uint16_t);

	const sockaddr* getAddr() const  override;
	socklen_t getAddrlen() const  override;

	std::ostream& insert(std::ostream& os) const  override;

	IPAddress::ptr broadcastAddress(uint32_t prefix_len)  override;
	IPAddress::ptr netwrokAddress(uint32_t prefix_len)  override;
	IPAddress::ptr subnetMask(uint32_t prefix_len)  override;

	uint16_t getPort() const  override;
	void setPort(uint16_t v)  override;
private:
	sockaddr_in addr_;
};

class IPv6Address : public IPAddress
{
public:
	using ptr = std::shared_ptr<IPv6Address>;
	IPv6Address();
	IPv6Address(const sockaddr_in6&);
	IPv6Address(const uint8_t address[16], uint16_t);

	static IPv6Address::ptr Create(const char* address, uint16_t);
	const sockaddr* getAddr() const  override;
	socklen_t getAddrlen() const  override;

	std::ostream& insert(std::ostream& os) const  override;

	IPAddress::ptr broadcastAddress(uint32_t prefix_len)  override;
	IPAddress::ptr netwrokAddress(uint32_t prefix_len)  override;
	IPAddress::ptr subnetMask(uint32_t prefix_len)  override;

	uint16_t getPort() const  override;
	void setPort(uint16_t v)  override;
private:
	sockaddr_in6 addr_;
};

class UnixAddress : public Address
{
public:
	using ptr = std::shared_ptr<UnixAddress>;
	UnixAddress();
	
	UnixAddress(const std::string& path);

	const sockaddr* getAddr() const override;
	socklen_t getAddrlen() const override;
	void setAddrlen(socklen_t len) { length_ = len; }
	std::ostream& insert(std::ostream& os) const override;
private:
	struct sockaddr_un addr_;
	socklen_t length_;
};

class UnknownAddress : public Address
{
public:
	using ptr = std::shared_ptr<UnknownAddress>;
	UnknownAddress(int family);
	UnknownAddress(const sockaddr&);
	const sockaddr* getAddr() const  override;
	socklen_t getAddrlen() const  override;

	std::ostream& insert(std::ostream& os) const  override;

private:
	sockaddr addr_;
};
std::ostream& operator<<(std::ostream& os, const Address& addr);

}
#endif
