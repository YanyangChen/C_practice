#include <stdio.h>
#include "funs.h"
#define ALLOCSIZE 10000

int main()
{
 //test1();
 //test2();
 testFuncPtr();
 testpointers();
 testarrayoverrun();
 pointerillustrate1();
 pointerillustrate2();
 static char allocbuf[ALLOCSIZE];
 static char *allocp = allocbuf;
 printf("allocp, %p \n", allocp);
 static char *allocp2 = &allocbuf[0];
 printf("allocp2, %p \n", allocp2);
// static char allocp3 = &allocbuf[0];
// printf("allocp3, %p", allocp3);
 printf("Length of string : %d \n",checklen("Hola!"));
}

extern int checklen(char *s)
{
	char *p = s;
	while (*p != '\0')
		p++;
	return p - s;
}

