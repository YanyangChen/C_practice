
# CFLAGS = -ggdb -fno-stack-protector -Wall -std=c99 
CFLAGS = -ggdb -fno-stack-protector -std=c99 

SRC=$(wildcard *.c)
OBJS := $(patsubst %.c, %.o, $(SRC))
BINS := $(patsubst %.c, %, $(SRC))

all: $(BINS)

%.o: %.c 
	gcc $(CFLAGS) -c  $< -o $@


%: %.c
	gcc $(CFLAGS) -o $@ $<

align:
	gcc -ggdb -O2 -o where_is_data_allocatedO2 where_is_data_allocated.c

notopt:
	gcc -ggdb     -o stack_overflow_printing stack_overflow_printing.c

opt:
	gcc -ggdb -O2 -o stack_overflow_optimisable stack_overflow_optimisable.c

clean:
	rm *.o a.out


