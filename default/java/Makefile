#--------------------------------------------------------
# File: Makefile 	Author(s): 
# Date: 
#--------------------------------------------------------

classpath=
jarname=

.PHONY: clean all class dbg_class jar
all: jar
class:
	mkdir -p bin/class
	javac -d bin/class -cp $(classpath) # source files #
dbg_class:
	mkdir -p dbg/class
	javac -g -d dbg/class/ # source files #
jar: class
	jar cmf src/MANIFEST.MF bin/$(jarname).jar -C bin/class # class files #
clean:
	rm -f *.o
