#include <stdio.h>     /* for fprintf */


int main() { 

  int a[10] = {1,2,3,4,5,6,7,8,9,10};
  
  int sum = 0;

  for (int i = 0; i < 10; i++) {
    sum = sum + a[i];
  }
  printf("The sum is %i.\n", sum);
  
  sum = 0;
  //for (int *p = a; p != (int*)(&(a[10])); p++){ 
  for (int *p = a; p != (int*) (a[10]); p++){ 
    sum = sum + *p;
  }

  printf("The sum is %i.\n", sum);

 }
