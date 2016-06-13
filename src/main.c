
#include "file1.h"
#include "file2.h"
#include "foo/bar.h"
#include <stdio.h>

int main(void)
{
    func_file1();
    func_file2();
    get_bar();
    printf("Hello from main.c\n");
    return 0;
}
