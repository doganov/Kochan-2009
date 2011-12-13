#import "Square.h"

@implementation Square: Rectangle

-(Square *) initWithSide: (int) side
{
  self = (Square *) [super initWithWidth: side andHeight: side];
  return self;
}

-(void) setSide: (int) s
{
  [self setWidth: s andHeight: s];
}

-(int) side
{
  return width;
}
@end
