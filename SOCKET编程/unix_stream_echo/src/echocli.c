#include <arpa/inet.h>
#include <signal.h>
#include "../select_echo/include/buf_handler.h"

int sock;

//初始化TCP连接
void init();

//通过初始化得到的套接字进行通信
void start();

int main(void) {
    init();
    start();
    return 0;
}

void init() {
    signal(SIGPIPE, SIG_IGN);

    //第一步：创建一个套接字socket(协议族，套接字类型，协议类型常量或0
    if ((sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
        ERR_EXIT("socket");

    //第二步：初始化目的套接字地址，并做字节处理，转换为网络字节序
    struct sockaddr_in servaddr;
    memset(&servaddr, 0, sizeof(servaddr));

    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(5188);
    servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");

    //第三步：调用连接函数，进行连接listen(未连接套接字，目的套接字地址，前者长度）
    if (connect(sock, (struct sockaddr *) &servaddr, sizeof(servaddr)) < 0)
        ERR_EXIT("connect");

    struct sockaddr_in localaddr;
    socklen_t addrlen = sizeof(localaddr);
    if (getsockname(sock, (struct sockaddr *) &localaddr, &addrlen) < 0)
        ERR_EXIT("getsockname");
    printf("IP:%s , PROT:%d\n", inet_ntoa(localaddr.sin_addr), ntohs(localaddr.sin_port));
}


void start() {
    //第四步：前者未连接套接字变成已连接状态，通过其进行通信
}