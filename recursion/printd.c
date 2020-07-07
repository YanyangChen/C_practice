#include <stdio.h>


void printd(int n)
{
	if(n<0){
		putchar('-');
		n=-n;
	}

	if(n/10)
		printd(n/10);
	putchar(n % 10 + '0');
}

int number =261701;

void recurint(){
	number--;
	printf("number is %d \n",number);
	recurint();
}

void main(int narg, char* argv[]){
	char* a = argv[1];
	int ia;
	sscanf(argv[1],"%d",&ia);
	printd(ia);
	printf("\n\n%s\n%d\n", argv[1], ia);
        recurint();
}
