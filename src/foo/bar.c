
#include "bar.h"
#include <stdio.h>

static int xyz = 42;
int * get_bar(void)
{
    printf("Called get_bar()\n");
    return &xyz;
}
