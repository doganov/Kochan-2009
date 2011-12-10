#import "Rectangle.h"

@implementation Rectangle

-(void) dealloc
{
  [origin release];
  [super dealloc];
}


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
  if (origin)
    [origin release];

  origin = [[XYPoint alloc] init];
  
  [origin setX: pt.x andY: pt.y];
}

-(XYPoint *) origin
{
  return origin;
}

-(void) translate: (XYPoint *) vector
{
  origin.x += vector.x;
  origin.y += vector.y;
}

@end
