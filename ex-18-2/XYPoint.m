#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal
{
  x = xVal;
  y = yVal;
}

-(id) copyWithZone: (NSZone *) zone
{
  XYPoint *result = [[self class] allocWithZone: zone];
  [result setX: x andY: y];

  return result;
}

@end;
