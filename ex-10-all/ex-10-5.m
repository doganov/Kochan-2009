#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  typedef Fraction * FractionObj;

  FractionObj f1 = [[Fraction alloc] init],
    f2 = [[Fraction alloc] init];

  [f2 release];
  [f1 release];

  [pool drain];
  return 0;
}
