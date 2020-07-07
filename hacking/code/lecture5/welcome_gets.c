#include <stdio.h>
#include <string.h>

int main( int argc,  char** argv) {

   char buffer[10];
   printf("What is your name?\n");
   gets(buffer);
   printf("Hello %s, welcome to our website!\n", buffer);
   return 0;
}
