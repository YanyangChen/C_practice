#include <stdio.h>     /* for fprintf */
#include <stdint.h>    /* for intptr_t */
#include <inttypes.h>  /* for printing intptr_t */
#include <stdbool.h>   /* for bool */

/* Will the compiler complain about conversions that loose precision? 
 * 
 * gcc will give more warnings with command line options, for example
 *    -Wall
 *    -Wconversion 
 */


int main() { 


    long l = 1234567812345678;
    int i = l;
    char c = i;

    printf("As a long, 1234567812345678 is %li \n", l); // printing long integer
    printf("As an int, 1234567812345678 is %i \n" , i);
    printf("As a char, 1234567812345678 is %c \n" , c);

    // now in hex
    printf("As a long, 1234567812345678 printed in hex is %lx \n", l); // printing long hex
    printf("As an int, 1234567812345678 printed in hex is %x \n" , i); 
    printf("As a char, 1234567812345678 printed in hex is %x \n" , c);
    
  }
