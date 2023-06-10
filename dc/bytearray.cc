
#include "bytearray.h"
#include "endian.h"
#include "log.h"

#include <fstream>
#include <sstream>
#include <iomanip>
#include <iostream>
using namespace dc;

static	Logger::LoggerPtr g_logger = DC_LOG_NAME("system");

ByteArray::Node::Node(size_t s)
	: ptr(new char[s]),
	  next(nullptr),
	  size(s)
{

}

ByteArray::Node::Node()
	: ptr(nullptr),
	  next(nullptr),
	  size(0)
{
}

ByteArray::Node::~Node()
{
	if( ptr )
		delete [] ptr;
}


ByteArray::ByteArray(size_t base_size)
	: baseSize_(base_size),
	  position_(0),
	  capacity_(base_size),
	  size_(0),
	  endian_(DC_BIG_ENDIAN),
	  root_(new Node(base_size)),
	  cur_(root_)
{

}

ByteArray::~ByteArray()
{
	Node* tmp = root_;
	while( tmp )
	{
		cur_ = tmp;
		tmp = tmp->next;
		delete cur_;
	}
}

bool ByteArray::isLittleEndian() const
{
	return endian_ == DC_LITTLE_ENDIAN;
}


void ByteArray::setIsLittleEndian(bool val)
{
	if (val )
	{
		endian_ = DC_LITTLE_ENDIAN;
	}
	else
	{
		endian_ = DC_BIG_ENDIAN;
	}
}

void ByteArray::writeFint8(int8_t value)
{
	write(&value, sizeof(value));
}
void ByteArray::writeFuint8(uint8_t value)
{
	write(&value, sizeof(value));
}

void ByteArray::writeFint16 (int16_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

void ByteArray::writeFuint16(uint16_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

void ByteArray::writeFint32 (int32_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

void ByteArray::writeFuint32(uint32_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

void ByteArray::writeFint64 (int64_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

void ByteArray::writeFuint64(uint64_t value) {
    if(endian_ != DC_BYTE_ORDER) {
        value = byteswap(value);
    }
    write(&value, sizeof(value));
}

static uint32_t EncodeZigzag32(const int32_t& v)
{
	if( v < 0 )
	{
		return ((uint32_t)(-v)) * 2 - 1;
	}
	else
	{
		return v * 2;
	}
}

static uint64_t EncodeZigzag64(const int64_t& v)
{
	if( v < 0 )
	{
		return ((uint64_t)(-v)) * 2 - 1;
	}
	else 
	{
		return v * 2;
	}
}

static int32_t DecodeZigzag32(const uint32_t& v)
{
	return (v >> 1) ^ -(v & 1);
}

static int64_t DecodeZigzag64(const uint64_t& v)
{
	return (v >> 1) ^ (v&1);
}
void ByteArray::writeInt32(int32_t value)
{
	writeUint32(EncodeZigzag32(value));	
}

void ByteArray::writeUint32(uint32_t value)
{
	uint8_t tmp[5];
	uint8_t i = 0;
	while( value >= 0x80 )
	{
		tmp[i++] = (value & 0x7f) | 0x80;
		value >>= 7;
	}
	tmp[i++] = value;
	write(tmp, i);
}

void ByteArray::writeInt64 (int64_t value)
{
	writeUint64(EncodeZigzag64(value));
}

void ByteArray::writeUint64(uint64_t value)
{
	uint8_t tmp[10];
	uint8_t i = 0;
	while( value >= 0x80  )
	{
		tmp[i++] = (value & 0x7f) | 0x80;
		value >>= 7;
	}
	tmp[i++] = value;
	write(tmp, i);

}


void ByteArray::writeFloat(float value)
{
	uint32_t v;
	memcpy(&v, &value, sizeof(value));
	writeFuint32(v);
}

void ByteArray::writeDouble(double value)
{
	uint64_t v;
	memcpy(&v, &value, sizeof(value));
	writeFuint64(v);
}

void ByteArray::writeStringF16(const string& value)
{
	writeFuint16(value.size());
	write(value.c_str(), value.size());
}

void ByteArray::writeStringF32(const std::string& value)
{

	writeFuint32(value.size());
	write(value.c_str(), value.size());
}

void ByteArray::writeStringF64(const std::string& value)
{
	
	writeFuint64(value.size());
	write(value.c_str(), value.size());

}

void ByteArray::writeStringVint(const std::string& value)
{
	writeUint64(value.size());
	write(value.c_str(), value.size());
}

void ByteArray::writeStringWithoutLength(const std::string& value)
{
	write(value.c_str(), value.size());
}

int8_t ByteArray::readFint8()
{
	int8_t v;
	read(&v, sizeof(v));
	return v;
}

uint8_t ByteArray::readFuint8()
{
	uint8_t v;
	read(&v, sizeof(v));
	return v;
}

#define XX(type) \
	type v; \
	read(&v, sizeof(v)); \
	if( endian_ == DC_BYTE_ORDER) { \
		return v; \
	}else { \
		return byteswap(v); \
	}
int16_t ByteArray::readFint16() 
{
	XX(int16_t);
}
uint16_t ByteArray::readFuint16() 
{
	XX(uint16_t);
}
int32_t ByteArray::readFint32() 
{
	XX(int32_t);
}
uint32_t ByteArray::readFuint32() 
{
	XX(uint32_t);
}
int64_t ByteArray::readFint64() 
{
	XX(int64_t);
}
uint64_t ByteArray::readFuint64() 
{
	XX(uint64_t);
}
#undef XX

int32_t ByteArray::readInt32()
{
	return DecodeZigzag32(readUint32());
}
uint32_t ByteArray::readUint32()
{
	uint32_t result = 0;
	for( int i = 0; i < 32; i+=7 )
	{
		uint8_t b = readFuint8();
		if( b < 0x80 )
		{
			result |= ((uint32_t)b) << i;
			break;
		}
		else
		{
			result |= (((uint32_t)(b & 0x7f)) << i );
		}
	}
	return result;
}

uint64_t ByteArray::readUint64()
{
	uint64_t result = 0;
	for( int i = 0; i < 64; i+=7 )
	{
		uint8_t b = readFuint8();
		if( b < 0x80 )
		{
			result |= ((uint32_t)b) << i;
			break;
		}
		else
		{
			result |= (((uint32_t)(b & 0x7f)) << i );
		}
	}
	return result;
}

int64_t ByteArray::readInt64()
{
	return DecodeZigzag64(readUint64());
}

float ByteArray::readFloat()
{
	uint32_t v = readUint32();
	float value;
	memcpy(&value, &v, sizeof(v));
	return value;
}

double ByteArray::readDouble()
{
	uint64_t v = readUint64();
	double value;
	memcpy(&value, &v, sizeof(v));
	return value;
}

std::string ByteArray::readStringF16()
{
	uint16_t len = readFuint16();
	char buff[33];
	read(buff, len);
	return std::string(buff);
}
std::string ByteArray::readStringF32()
{
	uint32_t len = readFuint32();
	char buff[33];
	read(buff, len);
	return std::string(buff);
}
std::string ByteArray::readStringF64()
{
	uint64_t len = readFuint64();
	char buff[65];
	read(buff, len);
	return std::string(buff);
}
std::string ByteArray::readStringVint()
{
	uint16_t len = readFuint64();
	char buff[65];
	read(buff, len);
	return std::string(buff);
}

void ByteArray::clear()
{
	position_ = size_ = 0;
	capacity_ = baseSize_;
	Node* tmp = root_->next;
	while( tmp )
	{
		cur_ = tmp;
		tmp = tmp->next;
		delete cur_;
	}
	cur_ = root_;
	root_->next = nullptr;
}

void ByteArray::write(const void* buf, size_t size)
{
	if( size == 0 )
	{
		return;
	}
	addCapacity(size);

	size_t npos = position_ % baseSize_;
	size_t ncap = cur_->size - npos;
	size_t bpos = 0;
	while( size > 0 )
	{
		if( ncap >= size )
		{
			memcpy(cur_->ptr + npos, (const char*)buf + bpos, size);
			if( cur_->size == (npos + size))
			{
				cur_ = cur_->next;
			}
			position_ +=size;
			bpos +=size;
			size = 0;
		}
		else
		{
			memcpy(cur_->ptr + npos, (const char*)buf + bpos, ncap);
			position_ += ncap;
			bpos += ncap;
			size -= ncap;
			cur_ = cur_->next;
			ncap = cur_->size;
			npos = 0;
		}
	}
	if( position_ > size_ )
	{
		size_ = position_;
	}
}

void ByteArray::read(void* buf, size_t size)
{
	if( size > getReadSize() )
	{
		throw std::out_of_range("not enough len");
	}

	size_t npos = position_ % baseSize_;
	size_t ncap = cur_->size - npos;
	size_t bpos = 0;
	while(size > 0 )
	{
		if( ncap >= size)
		{
			memcpy((char*)buf + bpos, cur_->ptr + npos, size);
			if( cur_->size == npos + size)
			{
				cur_ = cur_->next;
			}
			position_ +=size;
			bpos += size;
			size = 0;
		}
		else
		{
			memcpy(( char*)buf + bpos, cur_->ptr + npos, ncap);
			position_ +=ncap;
			bpos += ncap;
			size -= ncap;
			cur_ = cur_->next;
			ncap = cur_->size;
			npos = 0;
		}
	}
}

void ByteArray::read(void* buf, size_t size, size_t position) const
{
	if( size > (size_ - position) )
	{
		throw std::out_of_range("not enough len");
	}

	size_t npos = position % baseSize_;
	size_t ncap = cur_->size - npos;
	size_t bpos = 0;
	Node* cur = cur_;
	while(size > 0 )
	{
		if( ncap >= size)
		{
			memcpy((char*)buf + bpos, cur->ptr + npos, size);
			if( cur->size == npos + size)
			{
				cur = cur->next;
			}
			position +=size;
			bpos += size;
			size = 0;
		}
		else
		{
			memcpy((char* )buf + bpos, cur->ptr + npos, ncap);
			position +=ncap;
			bpos += ncap;
			size -= ncap;
			cur = cur->next;
			ncap = cur->size;
			npos = 0;
		}
	}
}

void ByteArray::setPosition(size_t v)
{
	if( v > size_ )
	{
		throw std::out_of_range("set_postin out of range");
	}

	position_ = v;
	cur_ = root_;

	while( v > cur_->size )
	{
		v -= cur_->size;
		cur_ = cur_->next;
	}

	if( v == cur_->size)
	{
		cur_ = cur_->next;
	}
}

bool ByteArray::writeToFile(const std::string& name) const
{
	std::ofstream ofs;
	ofs.open(name, std::ios::trunc | std::ios::binary);
	if( !ofs )
	{
		DC_LOG_ERROR(g_logger) << " open file: " << name << " error";
		return false;
	}
	int64_t read_size = getReadSize();
	int64_t pos = position_;
	Node* cur = cur_;
	while( read_size > 0 )
	{
		int diff = pos % baseSize_;	
		int64_t len = (read_size > (int64_t) baseSize_ ? baseSize_ : read_size) - diff;
		ofs.write(cur->ptr + diff, len);
		cur = cur->next;
		pos += len;
		read_size -= len;
	}
	return true;
}

bool ByteArray::readFromFile( const std::string& name)
{
	DC_LOG_INFO(g_logger) << name;
	std::ifstream ifs;
	ifs.open(name, std::ios::binary);
	if( !ifs )
	{
		DC_LOG_ERROR(g_logger) << "readFromFile name = " << name
			<< "error ";
		return false;
	}
	char buf[baseSize_ + 1];
	while( !ifs.eof())
	{
		ifs.read(buf, baseSize_);
		write(buf, ifs.gcount());
	}
	return true;
}

void ByteArray::addCapacity(size_t size)
{
	if( size == 0 )
		return;
	int old_cap = getCapacity();
	if( old_cap >= static_cast<int>(size) )
		return;

	size = size - old_cap;
	size_t count = (size / baseSize_) + 1;
	Node* tmp = root_;
	while( tmp->next )
	{
		tmp = tmp->next;
	}
	Node* first = nullptr;
	for( size_t i = 0; i < count; ++i )
	{
		tmp->next = new Node( baseSize_);
		if( first == nullptr )
			first = tmp->next;
		tmp = tmp->next;
		capacity_ += baseSize_;
	}
	if( !old_cap )
		cur_ = first;
	
}


std::string ByteArray::toString() const
{
	std::string str;
	str.resize(getReadSize());
	if( str.empty() )
		return str;
	read(&str[0], str.size(), position_);
	DC_LOG_INFO( g_logger ) << " const toString = " << str;
	return str;
}

std::string ByteArray::toHexString() const
{
	std::string str = toString();
	std::stringstream ss;
	for( size_t i = 0; i < str.size(); ++i )
	{
		if( i > 0 && i % 32 == 0 )
		{
			ss << std::endl;
		}
		ss << std::setw(2) << std::setfill('0') << std::hex
		   << (int)(uint8_t) str[i] << " ";
	}
	return ss.str();
}

uint64_t ByteArray::getReadBuffers(std::vector<iovec>& buffers, uint64_t len) const
{
	len = len > getReadSize() ? getReadSize() : len;
	if( len == 0 )
	{
		return 0;
	}
	
	size_t size = len;
	size_t npos = position_ % baseSize_;
	size_t ncap = cur_->size - npos;
	struct iovec iov;
	Node* cur = cur_;

	while( len > 0 )
	{
		if( ncap >= len )
		{
			iov.iov_base = cur->ptr + npos;	
			iov.iov_len = len;
			len = 0;
		}
		else
		{
			iov.iov_base = cur->ptr + npos;
			len -= ncap;
			cur = cur->next;
			ncap = cur->size;
			npos = 0;
		}
		buffers.push_back(iov);
	}
	return size;
}

uint64_t ByteArray::getReadBuffers(std::vector<iovec>& buffers, uint64_t len, uint64_t position) const
{
	len = len > getReadSize() ? getReadSize() : len;
	if( len == 0 )
	{
		return 0;
	}
	
	size_t size = len;
	size_t npos = position % baseSize_;
	size_t count = position / baseSize_;
	Node* cur = root_;
	while( count > 0 )
		cur = cur->next;
	size_t ncap = cur->size - npos;
	struct iovec iov;

	while( len > 0 )
	{
		if( ncap >= len )
		{
			iov.iov_base = cur->ptr + npos;	
			iov.iov_len = len;
			len = 0;
		}
		else
		{
			iov.iov_base = cur->ptr + npos;
			len -= ncap;
			cur = cur->next;
			ncap = cur->size;
			npos = 0;
		}
		buffers.push_back(iov);
	}
	return size;
}

uint64_t ByteArray::getWriteBuffers(std::vector<iovec>& buffers, uint64_t len)
{
	if( len == 0 )
	{
		return 0;
	}

	addCapacity(len);
	uint64_t size = len;
	size_t npos = position_ % baseSize_;
	size_t ncap = cur_->size - npos;
	struct iovec iov;
	Node* cur = cur_;
	while( len > 0 )
	{
		if( ncap >= len )
		{
			iov.iov_base = cur->ptr + npos;
			iov.iov_len = len;
			len = 0;
		}
		else
		{
			iov.iov_base = cur->ptr + npos;
			iov.iov_len = ncap;
			len -= ncap;
			cur = cur->next;
			ncap = cur->size;
			npos = 0;
		}
		buffers.push_back(iov);
	}
	return size;
}
