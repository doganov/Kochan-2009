// Implement a Calculator class

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
  double accumulator;
}

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
@end

@implementation Calculator

-(void) setAccumulator: (double) value
{
  accumulator = value;
}

-(void) clear;
{
  accumulator = 0;
}

-(double) accumulator
{
  return accumulator;
}

-(double) add: (double) value
{
  accumulator += value;
  return accumulator;
}

-(double) subtract: (double) value
{
  accumulator -= value;
  return accumulator;
}

-(double) multiply: (double) value
{
  accumulator *= value;
  return accumulator;
}

-(double) divide: (double) value;
{
  accumulator /= value;
  return accumulator;
}
@end;

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Calculator *deskCalc;

  deskCalc = [[Calculator alloc] init];

  [deskCalc clear];
  NSLog (@"Start with 100.0");
  [deskCalc setAccumulator: 100.0];
  NSLog (@"add 200.: %g", [deskCalc add: 200.]);
  NSLog (@"divide by 15.0: %g", [deskCalc divide: 15.0]);
  NSLog (@"subtract 10.0: %g", [deskCalc subtract: 10.0]);
  NSLog (@"multiply by 5: %g", [deskCalc multiply: 5]);
  NSLog (@"The result is %g", [deskCalc accumulator]);
  [deskCalc release];

  [pool drain];
  return 0;
}
