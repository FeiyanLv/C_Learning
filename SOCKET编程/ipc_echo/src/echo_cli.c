//
// Created by liuxing1 on 6/26/19.
//

//
// Created by liuxing1 on 6/25/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
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

void echo_cli(int msgid);

int main(void) {
    int msgid;
    msgget(1234, 0);
    if (msgid == -1)
        ERR_EXIT("msgget");

    echo_cli(msgid);

    return 0;
}

void echo_cli(int msgid) {
    int n, pid;
    pid = getpid();
    printf("%d", pid);
    msgbuf buf;
    memset(&buf, 0, sizeof(buf));
    *((int *) buf.mtext) = pid;
    buf.mtype = 1;
    while (fgets(buf.mtext + 4, MSGMAX, stdin) != NULL) {
        if (msgsnd(msgid, &buf, 4 + strlen(buf.mtext + 4), 0) < 0)
            ERR_EXIT("msgsnd");

        printf("%s", buf.mtext);

        memset(buf.mtext + 4, 0, MSGMAX - 4);
        if ((n = msgrcv(msgid, &buf, MSGMAX, pid, 0)) < 0)
            ERR_EXIT("msgrcv");

        printf("%s", buf.mtext);

        fputs(buf.mtext + 4, stdout);
        memset(buf.mtext + 4, 0, MSGMAX - 4);
    }
}