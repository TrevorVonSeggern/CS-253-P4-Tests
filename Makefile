# Makefile for outputChecker

# "make" - builds executable file "check"
# "make clean" - removes all .0 and executable files.
# "make tar" - creates a tar file for OutputChecker

CC = g++
SRC = main.cpp fileReader.cpp
OBJ = main.o fileReader.o
FLAGS = -g -Wall -std=c++11 -I. *.cpp

all: build

build: clean
	$(CC) $(FLAGS) -o check

clean:
	rm -f *.o check

tar:
		tar -cvf checkFiles.tar *.cpp *.h Makefile *.txt
