#include <stdio.h>
#include <string.h>

int f(){
  char p[20];
  int j;
  gets(p); // NEVER USE gets!!
  return 1;
}

int main(int argc, char** archv i){
  char *msg ="hello";
  f();
  printf("%i", i);
}

