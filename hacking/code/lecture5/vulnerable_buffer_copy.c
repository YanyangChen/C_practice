#include <stdio.h>
#include <string.h>

void vulnerable(char *s){

   char a[10] = "Hallo ";
   char buffer[10] = {'N','a','m','e','\0'};
   char b[10] = ", welkom!\n";

   strcpy(buffer, s); // copy s into buffer

   printf("%s%s%s\n", a,buffer,b);

   printf("   buffer is %s \n", buffer);
   printf("   a is %s \n", a);
   printf("   b is %s \n", b);
}

void main( int argc,  char** argv) {
   vulnerable(argv[1]); 
}
