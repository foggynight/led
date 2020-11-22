# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020 Robert Coffey

CC=gcc
CFLAGS=
DEBUGFLAGS=-g -Wall -Wextra -Wpedantic

SRCS=$(wildcard src/*.c)
OBJS=$(SRCS:%.c=%.o)
PROG=led

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS)

debug: $(SRCS)
	$(CC) $(DEBUGFLAGS) -o $(PROG) $(SRCS)

$(OBJS): $(SRCS)

.PHONY: clean
clean:
	rm -f $(OBJS)

.PHONY: uninstall
uninstall:
	rm -f $(OBJS) $(PROG)
