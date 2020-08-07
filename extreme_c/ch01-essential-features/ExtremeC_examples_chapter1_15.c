// File name: ExtremeC_exampels_chapter1_15.c
// Description: Example 1.15

#include <stdio.h>

int* create_an_integer(int default_value) {
  int var = default_value;
  return &var;
}

int main() {
  int* ptr = NULL;
  ptr = create_an_integer(10);//the returned &var is now pointing at nothing. ptr is now a danggling pointer.
  printf("%d\n", *ptr);
  return 0;
}
