#import "ComparisonMethods.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *a = [[Fraction alloc] init];
  Fraction *b = [[Fraction alloc] init];

  [a setTo: 1 over: 3];
  [b setTo: 2 over: 5];

  [a print]; NSLog (@"is equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a print]; NSLog (@"is less than or equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isLessThanOrEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a print]; NSLog (@"is less than"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isLessThan: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a print]; NSLog (@"is greater than or equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isGreaterThanOrEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a print]; NSLog (@"is greater than"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isGreaterThan: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a print]; NSLog (@"is not equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isNotEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [a release];
  [b release];

  [pool drain];
  return 0;
}
