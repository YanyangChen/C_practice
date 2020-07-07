#include <stdio.h>

/* This demoes what may happen if we read uninitialised memory 
 *
 */
int counter;

/* declarations of f, g, h so we can use them in main */
void f();
void g();
void h();

int main(){
   f(); // prints a value of i that it happens to find on the stack
   g();
   f(); // probably prints a different value for i
        // because the call to g() will have changed the stack
   h();
   f(); // probably prints a different value for i 
        // because the call to h() will have changed the stack
}

void f(){
  int i;
  printf("i has value %i \n", i);
   // because i is not initialised, this will print whatever
   // value happens to be on the stack
}

void g(){
  int j = 0xFFFFFFFF;
  printf("j has value %i \n", j);
}

void h(){
  int k = 0xCFFFFFFF;
  printf("k has value %i \n", k);
}

