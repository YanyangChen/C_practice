/** a program to demo what happens if we run out of heap space
 */

#include <stdio.h>   // for printf
#include <stdbool.h> // for bool
#include <stdlib.h>  // for malloc

void f();

void main() { 
   int i = 0;
   while (true) {
      f(); 
      i++;
      //printf("iteration %i \n", i);
   }
}

void f(){ 
   int *x = (int*) malloc(300*sizeof(int)); 
   x[0] = 0; 
   for( int i=1; i<300; i++){ 
      x[i] = x[i-1]+i;
   } 
} 

