#import "ComparisonMethods.h"

@implementation Fraction (ComparisonMethods)

-(BOOL) isEqualTo:(id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;

  return [self compare: object] == 0;
}

-(BOOL) isLessThanOrEqualTo: (id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;
  
  return [self compare: object] <= 0;
}

-(BOOL) isLessThan: (id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;
  
  return [self compare: object] < 0;
}

-(BOOL) isGreaterThanOrEqualTo: (id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;
  
  return [self compare: object] >= 0;
}

-(BOOL) isGreaterThan: (id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;
  
  return [self compare: object] > 0;
}

-(BOOL) isNotEqualTo: (id) object
{
  if (![object isKindOfClass: [Fraction class]]) return false;
  
  return [self compare: object] != 0;
}

@end
