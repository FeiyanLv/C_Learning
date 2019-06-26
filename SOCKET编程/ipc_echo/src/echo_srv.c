//
// Created by liuxing1 on 6/25/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/msg.h>

#define ERR_EXIT(m)\
    do\
{\
    perror(m);\
    exit(EXIT_FAILURE);\
} while(0)

#define MSGMAX 8192

typedef struct msgbuf {
    long mtype;
    char mtext[MSGMAX];
} msgbuf;

void echo_srv(int msgid);

int main(void) {
    int msgid = msgget(1234, IPC_CREAT | 0666);
    if (msgid == -1)
        ERR_EXIT("msgget");

    echo_srv(msgid);

    return 0;
}

void echo_srv(int msgid) {
    msgbuf buf;
    int n;
    while (1) {
        memset(&buf, 0, sizeof(buf));
        if ((n = msgrcv(msgid, &buf, MSGMAX, 1, 0)) < 0)
            ERR_EXIT("msgrcv");

        int pid = *((int *) buf.mtext);
        fputs(buf.mtext + 4, stdout);
        buf.mtype = pid;
        msgsnd(msgid, &buf, n, 0);
    }
}