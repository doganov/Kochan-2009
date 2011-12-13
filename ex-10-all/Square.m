#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s
{
  [self setWidth: s andHeight: s];
}

-(int) side
{
  return width;
}
@end
