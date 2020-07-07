#include <stdio.h>

/* Another example to show the effect of a stack overflow.
 *
 * Note:
 *
 * - comparing this code with stack_overflow.c shows that
 *   printing is very slow!
 *
 * - making the string longer means we run out of memory faster.
 *
 */

int counter = 261701;

int main(){
	char* test = "testing testing!";
	
	char* test1 = "testing testing!";

	char* test2 = "testing testing!";
	char* test3 = "testing testing!";
        counter--;
        printf("Counter now has value %i \n",counter);
        main();
}


