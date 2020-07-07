#include <stdio.h>

/* An example to show the effect of a stack overflow.
 *
 * Note:
 *
 * - comparing this code with stack_overflow_printing.c shows that
 *   printing is very slow!
 *
 * - making the string longer means we run out of memory faster.
 *
 * - using the -fstack-split option of gcc will change the
 *   behaviour, because then the stack size can be adjusted when
 *   the program runs.
 */

int counter = 261701;

int main(){
        char* string = "let's use up some memory";
        counter--;
        main();
}


