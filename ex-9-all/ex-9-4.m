// Illustrate Dynamic Typing and Binding

#import "Fraction.h"
#import "Complex.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  id dataValue1, dataValue2, result;
  Fraction *f1 = [[Fraction alloc] init];
  Fraction *f2 = [[Fraction alloc] init];
  Complex *c1 = [[Complex alloc] init];
  Complex *c2 = [[Complex alloc] init];

  [f1 setTo: 2 over: 5];
  [f2 setTo: 1 over: 5];
  [c1 setReal: 10.0 andImaginary: 2.5];
  [c2 setReal: 1.0 andImaginary: 2.5];

  // fraction

  dataValue1 = f1;
  dataValue2 = f2;
  result = [dataValue1 add: dataValue2];
  [result print];
  [result release];

  // complex number

  dataValue1 = c1;
  dataValue2 = c2;
  result = [dataValue1 add: dataValue2];
  [result print];
  [result release];

  [c1 release];
  [c2 release];
  [f1 release];
  [f2 release];

  [pool drain];
  return 0;
}
