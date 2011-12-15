#import <MathOps.h>

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
  // To add two fractions:
  // a/b + c/d = ((a*d) + (b*c)) / (b * d)

  // result will store the result of the addition
  Fraction *result = [[Fraction alloc] init];
  int resultNum, resultDenom;

  resultNum = numerator * f.denominator + denominator * f.numerator;
  resultDenom = denominator * f.denominator;

  [result setTo: resultNum over: resultDenom];
  [result reduce];

  return result;
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

-(Fraction *) mul: (Fraction *) f
{
  Fraction *result = [[Fraction alloc] init];

  [result setTo: numerator * f.numerator
           over: denominator * f.denominator];
  [result reduce];

  return result;
}

-(Fraction *) div: (Fraction *) f
{
  Fraction *result = [[Fraction alloc] init];

  [result setTo: numerator * f.denominator
           over: denominator * f.numerator];
  [result reduce];

  return result;
}

-(Fraction *) invert
{
  Fraction *result = [[Fraction alloc] init];

  [result setTo: denominator over: numerator];
  [result reduce];

  return result;
}
@end
