#import <Foundation/Foundation.h>

// Define the Fraction class

@interface Fraction : NSObject
{
  int numerator;
  int denominator;
}

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;

@end
