
#include "dll.h"
extern int add(int , int); 


int main(int argc, char ** argv)
{

    auto e = add(8,9);
    printf("e is %d\n", e);

    return 0;
}
