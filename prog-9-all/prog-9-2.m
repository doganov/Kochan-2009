// Illustrate Dynamic Typing and Binding

#import "Fraction.h"
#import "Complex.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  id dataValue;
  Fraction *f1 = [[Fraction alloc] init];
  Complex *c1 = [[Complex alloc] init];

  [f1 setTo: 2 over: 5];
  [c1 setReal: 10.0 andImaginary: 2.5];

  // first dataValue gets a fraction

  dataValue = f1;
  [dataValue print];

  // now dataValue gets a complex number

  dataValue = c1;
  [dataValue print];

  [c1 release];
  [f1 release];

  [pool drain];
  return 0;
}
