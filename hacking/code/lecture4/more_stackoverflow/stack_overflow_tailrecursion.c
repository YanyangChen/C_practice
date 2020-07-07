#include <stdio.h>

/* An example to show how gcc optimisations can avoid stack overflow.
 *
 * This code will segfault, but not when we compile with 
 *    gcc -O2 
 * as gcc then optimises away the tail recursion 
 *
 */
 
int i;

void do_something()
{
    i++;
    char* string = "let's use up some memory";
    // printf("Counter now has value %i \n",i);
}
 
int main()
{
    do_something();
    main();
}
