//http://trac.wxwidgets.org/ticket/16130
#include <stdio.h>
#include <time.h>
#include <wchar.h>

#define PRINT_SIZEOF(t) printf("sizeof(" #t ")=%d\n", (int)sizeof(t))

int main()
{
    PRINT_SIZEOF(void*);
    PRINT_SIZEOF(short);
    PRINT_SIZEOF(int);
    PRINT_SIZEOF(long);
    PRINT_SIZEOF(long long);
    PRINT_SIZEOF(unsigned int);
    PRINT_SIZEOF(size_t);
    PRINT_SIZEOF(time_t);
    PRINT_SIZEOF(wchar_t);
    PRINT_SIZEOF(float);
    PRINT_SIZEOF(double);
    PRINT_SIZEOF(long double);

    return 0;
}

