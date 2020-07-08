#include <stdio.h>

void func(){
	char *result;
	char buf[100];
	printf("Enter your name");
	result = gets(buf);
	printf(result);
}

int main (int argc, char* argv[])
{
	func();
}
