// Program 7.1

#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *aFraction = [[Fraction alloc] init];
  Fraction *bFraction = [[Fraction alloc] init];

  // Set two fractions to 1/4 and 1/2 and add them together

  [aFraction setTo: 1 over: 4];
  [bFraction setTo: 1 over: 2];

  // Print the results
  
  [aFraction print];
  NSLog (@"+");
  [bFraction print];
  NSLog (@"=");
  
  [aFraction add: bFraction];

  // reduse the result of the addition and print the result

  [aFraction reduce];
  [aFraction print];
  
  [aFraction release];
  [bFraction release];

  [pool drain];
  return 0;
}
