CC=clang
CFLAGS=-Wall -Wpedantic -g

SRCS=$(wildcard src/*.c)
OBJS=$(SRCS:%.c=%.o)
PROG=led

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS)

$(OBJS): $(SRCS)

.PHONY: clean
clean:
	rm -f $(OBJS)

.PHONY: uninstall
uninstall:
	rm -f $(OBJS) $(PROG)
