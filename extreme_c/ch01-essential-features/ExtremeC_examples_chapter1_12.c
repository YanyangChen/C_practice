// File name: ExtremeC_exampels_chapter1_12.c
// Description: Example 1.12

#include <stdio.h>

#define SIZE 5

int main(int argc, char** argv) {
 int arr[SIZE];
 arr[0] = 9;
 arr[1] = 22;
 arr[2] = 30;
 arr[3] = 23;
 arr[4] = 18;
 
 //int* ptr = &arr[0]; //in C, an array is actually a pointer that points to its first element,
 // we could write :
 int * ptr = arr; //instead of int* ptr = &arr[0];
 
 for (;;) {//infinite loop
   printf("%d\n", *ptr);
   if (ptr == &arr[SIZE - 1]) {
     break;
   }
   ptr++;
 }
 
 return 0;
}
