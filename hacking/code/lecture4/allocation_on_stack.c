/** a program to demo what happens if we (don't) run out of stack space
 */

#include <stdio.h>
#include <stdbool.h> // for bool


void f();

void main() { 
   int i;
   while (true) {
      f(); 
      i++;
      printf("iteration %i \n", i);
   }
}

void f(){ 
   int x[300]; 
   x[0]=0; 
   for( int i=1; i<300; i++){ 
      x[i] = x[i-1]+i; 
   } 
} 

