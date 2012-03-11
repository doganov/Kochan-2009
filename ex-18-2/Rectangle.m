#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h
{
  width = w;
  height = h;
}

-(int) area
{
  return width * height;
}

-(int) perimeter
{
  return (width + height) * 2;
}

-(void) setOrigin: (XYPoint *) pt
{
  origin = pt;
}

-(XYPoint *) origin
{
  return origin;
}

-(id) copyWithZone: (NSZone *) zone
{
  Rectangle *result = [[self class] allocWithZone: zone];
  [result setWidth: width andHeight: height];
  [result setOrigin: [[self origin] copyWithZone: zone]];

  return result;
}

@end
