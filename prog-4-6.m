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
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
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

-(void) add: (double) value
{
  accumulator += value;
}

-(void) subtract: (double) value
{
  accumulator -= value;
}

-(void) multiply: (double) value
{
  accumulator *= value;
}

-(void) divide: (double) value;
{
  accumulator /= value;
}
@end;

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Calculator *deskCalc;

  deskCalc = [[Calculator alloc] init];

  [deskCalc clear];
  [deskCalc setAccumulator: 100.0];
  [deskCalc add: 200.];
  [deskCalc divide: 15.0];
  [deskCalc subtract: 10.0];
  [deskCalc multiply: 5];
  NSLog (@"The result is %g", [deskCalc accumulator]);
  [deskCalc release];

  [pool drain];
  return 0;
}
