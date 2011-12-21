#import <Foundation/Foundation.h>

// Define the Fraction class

@interface Fraction : NSObject
{
  int numerator;
  int denominator;
}

@property int numerator, denominator;

-(Fraction *) initWith: (int) num over: (int) denom;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
+(int) addCount;
-(void) reduce;

@end
