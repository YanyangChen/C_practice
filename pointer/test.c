#include <stdio.h>
#include "funs.h"


//The unary operator & gives the address of an objest,
//so the statement p = &c;
//assigns the address of c to the variable p
//p is said "point to c"
//
//The & operator only applies to objects in memory: variables and array ele//ments. It cannot be applied to expressions, constants, or register varaib//les.
//
//
//The unary operator * is the indirection or dereferencing operator; when a//pplied to a pointer it access the object the pointer points to. Suppose  //that x and y are integers and ip is a pointer to int. 
//
void testpointers(){
testpointerloc();

printf("This is poitner testing\n\n");
int x = 3;
int* p1 = &x;
int** p2 = &p1;
int z = **p2 +1;
printf("result of z: %d\n", z);
}

extern void testpointerloc(){
char x; int i; short s; char y;
printf("x is located at %p \n", &x);
printf("i is located at %p \n", &i);
printf("s is located at %p \n", &s);
printf("y is located at %p \n", &y);
}
