CC=gcc
CFLAGS=-I.

hello-world: main.c
	$(CC) -o hello-world main.c $(CFLAGS)
