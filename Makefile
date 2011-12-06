SHELL = /bin/sh
CC = gcc
CFLAGS = `gnustep-config --objc-flags`
LIBS = -lobjc -lgnustep-base
SRC=$(wildcard *.m)
OBJ=$(basename $(SRC))
D=$(addsuffix .d, $(OBJ))

.PHONY: clean

all: $(OBJ)

clean:
	rm -fv $(OBJ) $(D)

%: %.m
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
