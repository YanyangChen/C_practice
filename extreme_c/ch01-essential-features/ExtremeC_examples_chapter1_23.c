// File name: ExtremeC_exampels_chapter1_23.c
// Description: Example 1.23
#include<stdio.h>
typedef struct {
  int x;
  int y;
} point_t;

typedef struct {
  point_t center;
  int radius;
} circle_t;

typedef struct {
  point_t start;
  point_t end;
} line_t;

//3 differenet pointers addressing the same cell of memory
int main(int argc, char** argv){
circle_t c;
circle_t* p1 = &c;
point_t* p2 = (point_t*)&c;
int* p3 = (int*)&c;

printf("p1: %p\n",(void*)p1);
printf("p2: %p\n",(void*)p2);
printf("p3: %p\n",(void*)p3);
}
