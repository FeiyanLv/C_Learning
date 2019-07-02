//
// Created by liuxing1 on 7/2/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cJSON.c>

int main() {

    cJSON *usr;

    usr = cJSON_CreateObject();                         //创建根数据对象
    cJSON_AddStringToObject(usr, "name", "liuxingj");   //加入键值，加字符串
    cJSON_AddStringToObject(usr, "passwd", "12345678");
    cJSON_AddNumberToObject(usr, "num", 3);             //加整数

    char *out = cJSON_Print(usr);                       //将json形式打印成正常字符串形式
    printf("%s\n", out);

    // 释放内存
    cJSON_Delete(usr);
    free(out);
    return 0;

}