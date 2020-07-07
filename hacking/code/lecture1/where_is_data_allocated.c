#include <stdio.h>   // for fprintf
#include <stdint.h>  // for intptr_t
#include <inttypes.h>  // for printing intptr_t

/* Using the operation & we can find out where a variable is
 * located. The result of &x is called the ADDRESS of X or
 * a POINTER to x;
 *
 * By compiling with the -O2 option, gcc will align variables
 * differently.
 */
int main() { 


  char x;
  int i;
  short s;
  char y;

  printf("x is allocated at %p \n", &x);
  printf("i is allocated at %p \n", &i);
  printf("s is allocated at %p \n", &s);
  printf("y is allocated at %p \n", &y);

}
		
