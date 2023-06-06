#ifndef DC_HOOK_H
#define DC_HOOK_H
#include <unistd.h>
#include <sys/socket.h>
#include <sys/uio.h>
#include <sys/types.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/ioctl.h>
namespace dc
{
	bool is_hook_enable();
	void set_hook_enable(bool flag);

}
extern "C" 
{
using sleep_fun= unsigned int (*)(unsigned int seconds);
extern sleep_fun sleep_f;

using usleep_fun = int (*)(useconds_t usec);
extern usleep_fun usleep_f;

using nanosleep_fun = int (*)(const struct timespec*, struct timespec*);
extern nanosleep_fun nanosleep_f;

using socket_fun = int (*)(int domain, int type, int protocol);
extern socket_fun socket_f;

using connect_fun = int (*)(int sockfd, const struct sockaddr*, socklen_t addrlen);
extern connect_fun connect_f;

using accept_fun = int (*)(int sockfd, struct sockaddr* , socklen_t*);
extern accept_fun accept_f;

//read
using read_fun = ssize_t (*)(int sockfd, void* buf, size_t );
extern read_fun read_f;

using recv_fun = ssize_t (*)(int sockfd, void* buf, size_t len, int flags);
extern recv_fun recv_f;

using recvfrom_fun = ssize_t (*)(int sockfd, void* buf, size_t len, int flags, struct sockaddr* src_addr, socklen_t *addrlen);
extern recvfrom_fun recvfrom_f;

using recvmsg_fun =  ssize_t (*)(int sockfd, struct msghdr* msg, int flags); 
extern recvmsg_fun recvmsg_f;

using readv_fun = ssize_t (*)(int sockfd, const struct iovec* iov, int iovcnt );
extern readv_fun readv_f;

//write
using write_fun = ssize_t (*)(int sockfd, const  void* buf, size_t size);
extern write_fun write_f;

using writev_fun = ssize_t (*)(int sockfd, const struct iovec* iov, int iovcnt );
extern writev_fun writev_f;

using send_fun = ssize_t (*)(int sockfd, const void* buf, size_t len, int flags );
extern send_fun send_f;

using sendto_fun = ssize_t (*)(int sockfd, const void* buf, size_t len, int flags, const struct sockaddr* dest_addr, socklen_t addrlen);
extern sendto_fun sendto_f;

using sendmsg_fun =  ssize_t (*)(int sockfd, const struct msghdr* msg, int flags); 
extern sendmsg_fun sendmsg_f;

//close
using close_fun = int (*)(int fd);
extern close_fun close_f;

using fcntl_fun = int (*)(int fd, int cmd, ...);
extern fcntl_fun fcntl_f;

using ioctl_fun = int (*)(int fd, unsigned long request, ...);
extern ioctl_fun ioctl_f;

using getsockopt_fun = int (*)(int sockfd, int level, int optname, void* optval, socklen_t * optlen);
extern getsockopt_fun getsockopt_f;

using setsockopt_fun = int (*)(int sockfd, int level, int optname, const void* optval, socklen_t optlen);
extern setsockopt_fun setsockopt_f;

extern int connect_with_timeout(int fd, const struct sockaddr* addr, socklen_t addrlen, uint64_t timeout_ms);
}
#endif
