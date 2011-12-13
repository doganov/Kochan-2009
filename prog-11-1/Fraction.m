#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
  NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
  if (denominator != 0)
    return (double) numerator / denominator;
  else
    return 1.0;
}

-(void) setTo: (int) n over: (int) d
{
  numerator = n;
  denominator = d;
}

-(void) reduce
{
  int u = numerator;
  int v = denominator;
  int temp;

  while (v != 0) {
    temp = u % v;
    u = v;
    v = temp;
  }

  numerator /= u;
  denominator /= u;
}

@end
