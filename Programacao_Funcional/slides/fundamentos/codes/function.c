#include <stdio.h>

int y = 0;

int f(int x)
{
    return x + y++;
}

int main()
{
    printf("f(2) = %d\n", f(2));    // f(2) = 2
    printf("f(2) = %d\n", f(2));    // f(2) = 3

    return 0;
}
