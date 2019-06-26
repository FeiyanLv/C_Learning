//
// Created by liuxing1 on 6/26/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
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

void echo_cli(int msgid);

int main(void) {
    int msgid = msgget(1234, 0);
    if (msgid == -1)
        ERR_EXIT("msgget");

    echo_cli(msgid);

    return 0;
}

void echo_cli(int msgid) {
    int pid = getpid();
    msgbuf buf;
    memset(&buf, 0, sizeof(buf));
    *((int *) buf.mtext) = pid;
    while (fgets(buf.mtext + 4, MSGMAX, stdin) != NULL) {
        buf.mtype = 1;
        if (msgsnd(msgid, &buf, 4 + strlen(buf.mtext + 4), 0) < 0)
            ERR_EXIT("msgsnd");
        memset(buf.mtext + 4, 0, MSGMAX - 4);

        if (msgrcv(msgid, &buf, MSGMAX, pid, 0) < 0)
            ERR_EXIT("msgrcv");
        fputs(buf.mtext + 4, stdout);
        memset(buf.mtext + 4, 0, MSGMAX - 4);
    }
}