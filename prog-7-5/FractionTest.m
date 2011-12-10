// Program 7.1

#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *aFraction = [[Fraction alloc] init];
  Fraction *bFraction = [[Fraction alloc] init];

  Fraction *resultFraction;
  
  [aFraction setTo: 1 over: 4]; // set 1st fraction to 1/4
  [bFraction setTo: 1 over: 2]; // set 2nd fraction to 1/2

  [aFraction print];
  NSLog (@"+");
  [bFraction print];
  NSLog (@"=");

  resultFraction = [aFraction add: bFraction];
  [resultFraction print];
  
  // This time give the result directly to print
  // memory leakage here!

  [[aFraction add: bFraction] print];

  [aFraction release];
  [bFraction release];
  [resultFraction release];

  [pool drain];
  return 0;
}
