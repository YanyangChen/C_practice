#include <stdio.h>
#include <stdbool.h> // for bool

/* Code sample to demo you can write completely ridiculous C code.
 *
 * Should this even be considered legal C code?
 */

void check(bool b) { 
  if (b) { 
    printf("Yes\n");
  } else {
    printf("No\n"); }
}

int main( ) {
  check(true);
  check(false);
  check(44);
  check(0);
  check(1.3);
  check(1.0);
  check(5/12);
  check("true");
  check(check); 

  return(0);
}
