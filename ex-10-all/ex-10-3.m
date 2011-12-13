#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *f1 = [[Fraction alloc] init];
  Fraction *f2 = [[Fraction alloc] init];
  Fraction *result;

  [f1 setTo: 5 over: 10];
  [f2 setTo: 10 over: 5];

  NSLog (@"Additions performed: %i", [Fraction addCount]);

  result = [f1 add: f2];

  NSLog (@"Additions performed: %i", [Fraction addCount]);

  [result release];
  [f2 release];
  [f1 release];

  [pool drain];
  return 0;
}
