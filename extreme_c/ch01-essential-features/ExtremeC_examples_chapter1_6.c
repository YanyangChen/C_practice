// File name: ExtremeC_exampels_chapter1_6.c
// Description: Example 1.6

#include <stdio.h>
//#X wraps X with "" and loop_1,2,3 cut the first parameter(and wrap it) with the rest parameters.
#define LOOP_3(X, ...) \
  printf("%s\n", #X);

#define LOOP_2(X, ...) \
  printf("%s\n", #X); \
  LOOP_3(__VA_ARGS__)

#define LOOP_1(X, ...) \
  printf("%s\n", #X); \
  LOOP_2(__VA_ARGS__)

#define LOOP(...) \
  LOOP_1(__VA_ARGS__)

int main(int argc, char** argv) {

  LOOP(copy paste cut select)
  LOOP(copy, paste, cut)
  LOOP(copy, paste, cut, select)

  return 0;
}
