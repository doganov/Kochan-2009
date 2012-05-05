//
//  Calculator.h
//  Fraction_Calculator
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Calculator : NSObject
{
    Fraction *operand1;
    Fraction *operand2;
    Fraction *accumulator;
}

@property (retain, nonatomic) Fraction *operand1, *operand2, *accumulator;

-(Fraction *) performOperation: (char) op;
-(void) clear;

@end
