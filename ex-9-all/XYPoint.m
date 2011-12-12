#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal
{
  x = xVal;
  y = yVal;
}

-(void) print
{
  NSLog (@"(%i, %i)", x, y);
}
@end;
