SHELL = /bin/sh
CC = gcc
CFLAGS = `gnustep-config --objc-flags`
LIBS = -lobjc -lgnustep-base
SRC=$(wildcard *.m)
OBJ=$(basename $(SRC))
D=$(addsuffix .d, $(OBJ))
COMPONENTS=Fraction FractionTest
SIMPLE_OBJ=$(filter-out $(COMPONENTS), $(OBJ))

.PHONY: clean

all: $(SIMPLE_OBJ) Fraction

clean:
	rm -fv $(OBJ) $(D)

Fraction: Fraction.m FractionTest.m

%: %.m
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
