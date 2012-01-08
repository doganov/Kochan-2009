#import "Fraction.h"

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  Fraction *fractionA = [[Fraction alloc] init];
  Fraction *fractionB = [[Fraction alloc] init];

  [fractionA setTo: 1 over: 2];
  [fractionB setTo: 5 over: 10];

  [[fractionA add: fractionB] print];

  [pool drain];
  return 0;
}
