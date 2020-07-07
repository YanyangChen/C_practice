#include <stdio.h>     /* for printf */

int main() { 

  int a[10] = {1,2,3,4,5,6,7,8,9,10};

  int sum = 0;

  for (int i = 0; i!=10; i++) {
          sum = sum + a[i];
  }
  printf("sum is %i \n", sum);

  sum = 0;
  for (int *p = (int*) &a; p!=&(a[10]); p++){
          sum = sum + *p;
  }
  printf("sum is %i \n", sum);

  sum = 0;
  for (int *p = &(a[0]); p!=&(a[10]); p++){
          sum = sum + *p;
  }
  printf("sum is %i \n", sum);

}
