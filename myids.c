#include <stdio.h>
#include "get_ids.h"
int main(int argc, char const *argv[])
{
    int uid, gid;
    get_ids(&uid, &gid);
    printf("User ID is %d. Group ID is %d.\n", uid, gid);
    return 0;
}