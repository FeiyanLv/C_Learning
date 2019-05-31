#include <arpa/inet.h>
#include <signal.h>
#include <sys/wait.h>
#include "../select_echo/include/buf_handler.h"

void start();

int main(void) {
    start();
    return 0;
}

void start() {
    
    //第一步：创建一个套接字socket(协议族，套接字类型，协议类型常量或0
    int listenfd;
    if ((listenfd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
        ERR_EXIT("socket");

    //第二步：初始化监听套接字地址，并做字节处理，转换为网络字节序
    struct sockaddr_in servaddr;
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(5188);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    int on = 1;
    if (setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
        ERR_EXIT("setsockopt");
    
    //第三步：绑定该地址，将本地某个IP地址和端口号绑定到指定监听套接字地址结构
    if (bind(listenfd, (struct sockaddr *) &servaddr, sizeof(servaddr)) < 0)
        ERR_EXIT("bind");
    
    //第四步：将被动/监听套接字从CLOSED状态转换到LISTEN状态，用来接受请求
    if (listen(listenfd, SOMAXCONN) < 0)
        ERR_EXIT("listen");
    
    //第五步：接受请求，从已完成连接队列中的队头返回第一个连接，如果为空，则阻塞
    struct sockaddr_in peeraddr;
    socklen_t peerlen;
}
