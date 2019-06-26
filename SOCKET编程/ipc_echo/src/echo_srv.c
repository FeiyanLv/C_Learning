//
// Created by liuxing1 on 6/25/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ipc.h>
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
    int msgid;
    msgid = msgget(1234, IPC_CREAT | 0666);
    if (msgid == -1)
        ERR_EXIT("msgget");

    printf("%d", msgid);
    echo_srv(msgid);

    return 0;
}

void echo_srv(int msgid) {
    printf("%d", msgid);

    msgbuf buf;
    memset(&buf, 0, sizeof(buf));
    int n;
    while (1) {
        if ((n = msgrcv(msgid, &buf, MSGMAX, 1, 0)) < 0)
            ERR_EXIT("msgrcv");

        printf("%s", buf.mtext);

        int pid;
        pid = *((int *) buf.mtext);
        fputs(buf.mtext + 4, stdout);
        buf.mtype = pid;

        printf("%s", buf.mtext);

        msgsnd(msgid, &buf, n, 0);
    }
}