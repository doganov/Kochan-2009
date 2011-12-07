// Program 7.1

#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Fraction *myFraction = [[Fraction alloc] init];

  // set fraction to 1/3

  [myFraction setNumerator: 1];
  [myFraction setDenominator: 3];

  // display the fraction

  NSLog (@"The value of myFraction is:");
  [myFraction print];
  [myFraction release];

  [pool drain];
  return 0;
}
