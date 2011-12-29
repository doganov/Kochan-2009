#import "Fraction.h"

#define FRACT(n, d) [[Fraction alloc] initWith: (n) over: (d)]

// Apply selector over all items sequentially.
void foreach(NSArray *items, SEL selector)
{
  for (id item in items)
    [item performSelector: selector];
}

@interface Fraction (Comparison)
-(NSComparisonResult) compare: (Fraction*) f;
-(NSString*) description;
-(Fraction *) sub: (Fraction *) f;
@end

@implementation Fraction (Comparison)
-(NSComparisonResult) compare: (Fraction*) f
{
  Fraction* diff = [self sub: f];
  int result;
  if (diff.numerator > 0)
    result = NSOrderedDescending;
  else if (diff.numerator < 0)
    result = NSOrderedAscending;
  else
    result = NSOrderedSame;

  [diff release];
  return result;
}

-(NSString*) description
{
  return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

-(Fraction *) sub: (Fraction *) f
{
  // To sub two fractions:
  // a/b - c/d = ((a*d) - (b*c)) / (b * d)

  Fraction *result = [[Fraction alloc] init];
  int resultNum, resultDenom;

  resultNum = (numerator * f.denominator) - (denominator * f.numerator);
  resultDenom = denominator * f.denominator;

  [result setTo: resultNum over: resultDenom];
  [result reduce];

  return result;
}
@end

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Initialize fractions
  NSMutableArray *fractions = [NSMutableArray arrayWithCapacity: 4];
  [fractions addObject: FRACT(2, 3)];
  [fractions addObject: FRACT(1, 5)];
  [fractions addObject: FRACT(2, 10)];
  [fractions addObject: FRACT(1, 2)];

  // Release all fractions once, so they are retained only by the array itself
  foreach (fractions, @selector(release));

  NSLog (@"Before sort: %@", fractions);

  [fractions sortUsingSelector: @selector(compare:)];

  NSLog (@"After sort: %@", fractions);

  [pool drain];
  return 0;
}
