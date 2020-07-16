#include <stdio.h>
#include "funs.h"



int (*functionPtr)(int,int);
int (*functionPtr3)(int, int, int);

int addInt(int n, int m){
	return n+m;
}

int add3Int(int a, int b, int c){
	return a+b+c;
}

void testFuncPtr(){
	printf("this is FuncPtr! \n");

	functionPtr = &addInt;
// the standard says that a function name in this context is converted to the address  // of the function
	functionPtr3 = add3Int;
	int sum = (*functionPtr)(2, 3);
	int sum3= (*functionPtr3)(2,3,4);
	printf("result from function ptr %d \n", sum);
	printf("result from function ptr 3 %d \n", sum3);
}



