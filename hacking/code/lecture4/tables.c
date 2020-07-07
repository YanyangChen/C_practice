
#include <stdio.h>   // for printf
#include <stdbool.h> // for bool
#include <stdlib.h>  // for malloc

int *table_of(int num, int len) {
   int i;
   int table[len+1];
   for (i=0; i <= len; i++) {
         table[i] = i*num;
   }
   return table; /* an int[] can be treated as an int* */
}

int main(){
  int *table3 = table_of(3,10);
  printf("5 times 3 is %i\n", *(table3+5)); 
  int *table4 = table_of(4,10);
  printf("5 times 4 is %i\n", *(table4+5));
  printf("5 times 3 is %i\n", *(table3+5));
}
