// File name: ExtremeC_exampels_chapter1_16.c
// Description: Example 1.16

#include <stdio.h>
#include <stdlib.h>

int* create_an_integer(int default_value) {
  int* var_ptr = (int*)malloc(sizeof(int));//assign a chunk of memory in heap memory, so it can pass
  //value in the pointer even when the scope is end(lifetime not limited to the declating function.). 
  //its life ends with free() fcuntion.
  *var_ptr = default_value;
  return var_ptr;
}

int main() {
  int* ptr = NULL;
  ptr = create_an_integer(10);
  printf("%d\n", *ptr);
  free(ptr);
  return 0;
}
