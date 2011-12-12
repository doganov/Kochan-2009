// Interface file for Complex class

#import <Foundation/Foundation.h>

@interface Complex: NSObject
{
  double real;
  double imaginary;
}

@property double real, imaginary;
-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
@end
