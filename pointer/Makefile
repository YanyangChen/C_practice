CC=/usr/bin/gcc
CFLAGS= -Wall -Wextra -g -O3

all: main

main: main.c test.c test1.c test2.c test3.c testFuncPtr.c funs.h
	$(CC) $(CFLAGS) -o main main.c test.c testFuncPtr.c

clean: 
	rm -f main
