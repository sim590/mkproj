#--------------------------------------------------------
# File: Makefile 	Author(s): 
# Date: 
#--------------------------------------------------------

CC=g++
CFLAGS=-I. -c
CPPFLAGS=--std=c++11
LFLAGS=

.PHONY: clean
prog: prog.o
	$(CC) $(LFLAGS) -o prog prog.o
prog.o: prog.c
	$(CC) $(CFLAGS) prog.c
clean:
	rm -f *.o
