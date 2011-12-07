// Program 7.1

#import "Fraction.h"

int main (int argc, char *argv[])
{
  Fraction *aFraction = [[Fraction alloc] init];
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  [aFraction setTo: 100 over: 200];
  [aFraction print];

  [aFraction setTo: 1 over: 3];
  [aFraction print];
  [aFraction release];

  [pool drain];
  return 0;
}
