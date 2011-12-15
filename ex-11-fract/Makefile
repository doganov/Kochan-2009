include ../Makefile.in

all: ex-11-1 ex-11-2 ex-11-3

MathOps.m: Fraction.m

Comparison.m: MathOps.m Fraction.m

ComparisonMethods.m: Comparison.m MathOps.m Fraction.m

ex-11-1: MathOps.m Fraction.m

ex-11-2: Comparison.m MathOps.m Fraction.m

ex-11-3: ComparisonMethods.m Comparison.m MathOps.m Fraction.m
