//
// Created by liuxing1 on 6/25/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <sys/msg.h>

#define ERR_EXIT(m)\
    do\
{\
    perror(m);\
    exit(EXIT_FAILURE);\
} while(0)

typedef struct msgbuf {
    long mtype;
    char mtext[1];
} msgbuf;


int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage:%s <bytes> <type>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int len = atoi(argv[1]);
    int type = atoi(argv[2]);
    int msgid;
    msgid = msgget(1234, 0);
    if (msgid == -1)
        ERR_EXIT("msgget");

    msgbuf *bufp;
    bufp = (msgbuf *) malloc(sizeof(msgbuf));
    bufp->mtype = type;
    if (msgsnd(msgid, bufp, len, IPC_NOWAIT) < 0)
        ERR_EXIT("msgsnd");
    return 0;
}