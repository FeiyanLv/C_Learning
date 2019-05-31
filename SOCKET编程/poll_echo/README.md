# poll()函数
>没有FD_SETSIZE的限制
```c
#include <poll.h>
//function  poll    
//param     *fds    我们要关心的套接口以及事件的指针，通常指向一个数组，将我们关心的IO等事件加入到这个数组中即可
//param     nfds    加入到fds数组中的IO的个数，即要检测的IO个数
//param     timeout 超时时间
//return    int     
int poll(struct pollfd *fds, nfds_t nfds, int timeout);
```

# events的值及含义


|值|含义|
|---|---|
|POLLIN|有数据到来，文件描述符可读|
|POLLPRI|有紧急数据可读，例如带外数据|
|POLLOUT|文件可写|
|POLLRDHUP|流式套接字半关闭|
|POLLERR|错误发生|
|POLLHUP|关闭|
|POLLNVAL|非法请求|
|POLLRDNORM|与POLLIN相同|
|POLLRDBAND|优先数据可读|
|POLLWRNORM|与POLLOUT相同|
|POLLWRBAND|优先数据可写|