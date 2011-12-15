#import "Comparison.h"

@implementation Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f
{
  return [self compare: f] == 0;
}

-(int) compare: (Fraction *) f
{
  Fraction* diff = [self sub: f];
  int result;
  if (diff.numerator > 0)
    result = 1;
  else if (diff.numerator < 0)
    result = -1;
  else
    result = 0;

  [diff release];
  return result;
}
@end

