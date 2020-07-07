
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

# With the -fsplit-stack option, the stack size can be increased
# at runtime (aka dynamically). So the compiled code will include
# a check for impending stack overflow, and code to allocate
# additional stack space. 
#
# This is called "split-stack" because it means the stack is no
# longer one continguous piece of memory.
# 
# The compiled code can also decide to decrease the stack space.

splitstack:
	gcc -ggdb -fsplit-stack -o stack_overflow_splitstack stack_overflow.c

# GCC can spot tail-recursion in programs, and then optimise this
# away, so that the compiled code is no longer recursive. The
# binaries created by the lines below illustrate this: if we
# turn up the optimisation level, the code no longer causes a
# stack overflow.

without_optimisations:
	gcc -ggdb -O0 -o stack_overflow_not_optimised stack_overflow_tailrecursion.c

with_optimisations:
	gcc -ggdb -O2 -o stack_overflow_optimised stack_overflow_tailrecursion.c

clean:
	rm *.o a.out


