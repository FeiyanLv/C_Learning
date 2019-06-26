//
// Created by liuxing1 on 6/25/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <sys/msg.h>
#include <getopt.h>

#define ERR_EXIT(m)\
    do\
{\
    perror(m);\
    exit(EXIT_FAILURE);\
} while(0)

#define MSGMAX 8192

typedef struct msgbuf {
    long mtype;
    char mtext[1];
} msgbuf;


int main(int argc, char *argv[]) {
    int flag = 0, type = 0, opt;
    while (1) {
        opt = getopt(argc, argv, "nt:");
        if (opt == '?')
            exit(EXIT_FAILURE);
        if (opt == -1)
            break;

        switch (opt) {
            case 'n':
                flag |= IPC_NOWAIT; //设置-n非阻塞形式接收消息
                break;
            case 't':
                type = atoi(optarg);//接收指定的消息类型 -t + (tpyeID)
                break;
        }
    }

    int msgid;
    msgid = msgget(1234, 0);
    if (msgid == -1)
        ERR_EXIT("msgget");

    msgbuf *bufp;
    bufp = (msgbuf *) malloc(sizeof(sizeof(long) + MSGMAX));
    bufp->mtype = type;
    int n;
    if ((n = msgrcv(msgid, bufp, MSGMAX, type, flag)) < 0)
        ERR_EXIT("msgrcv");

    printf("read %d bytes, type = %ld\n", n, bufp->mtype);
    return 0;
}