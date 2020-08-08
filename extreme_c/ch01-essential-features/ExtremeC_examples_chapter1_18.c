// File name: ExtremeC_exampels_chapter1_18.c
// Description: Example 1.18

#include <stdio.h>

void func(int* a) {//it's usually recommanded to use pointers as arguments, 8 bytes(x64 machine, 4 bytes in x86 machine) of a pointer argument is much more efficient than copoying hundreds of bytes of an object.
  int b = 9;
  *a = 5;// changeing pointer (parameter) 's value is allowed by dereferencing the pointer.
  a = &b;//but the pointer's location is never changed, this line of code affects nothing.
}

int main(int argc, char** argv) {
  int x = 3;
  int* xptr = &x;
  printf("Value before call: %d\n", x);
  printf("Pointer before function call: %p\n", (void*)xptr);
  func(xptr);
  printf("Value after call: %d\n", x);
  printf("Pointer after function call: %p\n", (void*)xptr);
  return 0;
}
