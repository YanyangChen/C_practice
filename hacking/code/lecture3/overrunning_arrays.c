#include <stdio.h>     /* for fprintf */

int main() { 

  int y = 7;
  int a[2];
  int x = 6; 

  printf("Oops, accessing a[2] returns %i \n", a[2]); 

  printf("y is allocated at %p \n", &y);
  printf("a is allocated at %p \n", &a);
  printf("x is allocated at %p \n", &x);
  printf("a[2] is allocated at %p \n", &(a[2]));
  printf("a[3] is allocated at %p \n", &(a[3]));
  printf("a[4] is allocated at %p \n", &(a[4]));

  }
