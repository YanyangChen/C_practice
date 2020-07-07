
CFLAGS_WARNINGS = -ggdb -fno-stack-protector -Wformat-security -std=c99 
CFLAGS = -ggdb -fno-stack-protector -std=c99 -Wno-format-security

# With the flags
#    -Wformat-security
#    -Wno-format-security
# gcc will/will not warn for format string problems
# With
#    -Wall
# all warnings are turned on.


SRC=$(wildcard *.c)
OBJS := $(patsubst %.c, %.o, $(SRC))
BINS := $(patsubst %.c, %, $(SRC))

all: $(BINS)

%.o: %.c 
	gcc $(CFLAGS) -c  $< -o $@

safe:
	gcc $(CFLAGS_WARNINGS) format_string_attack.c

%: %.c
	gcc $(CFLAGS) -o $@ $<

clean:
	rm *.o a.out


