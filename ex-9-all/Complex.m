// Implementation file for Complex class

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
  NSLog (@" %g + %gi ", real, imaginary);
}

-(void) setReal: (double) a andImaginary: (double) b
{
  real = a;
  imaginary = b;
}

-(Complex *) add: (Complex *) f
{
  Complex *result = [[Complex alloc] init];

  [result setReal: real + [f real]
     andImaginary: imaginary + [f imaginary]];

  return result;
}
@end
