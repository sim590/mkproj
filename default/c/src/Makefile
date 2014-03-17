#--------------------------------------------------------
# File: Makefile 	Author(s): 
# Date: 
#--------------------------------------------------------

CC=gcc
CFLAGS=-I. -c
LFLAGS=

.PHONY: clean
prog: prog.o
	$(CC) $(LFLAGS) -o prog prog.o
prog.o: prog.c
	$(CC) $(CFLAGS) prog.c
clean:
	rm -f *.o
