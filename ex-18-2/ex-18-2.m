#import "Rectangle.h"
#import "XYPoint.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Rectangle *myRect = [[Rectangle alloc] init];
  Rectangle *myRect2;
  XYPoint *myPoint = [[XYPoint alloc] init];

  [myPoint setX: 100 andY: 200];

  [myRect setWidth: 5 andHeight: 8];
  myRect.origin = myPoint;

  myRect2 = [myRect copy];
  myRect2.width = 1;

  NSLog (@"Rectangle w = %i, h = %i",
         myRect.width, myRect.height);

  NSLog (@"Origin at (%i, %i)",
         myRect.origin.x, myRect.origin.y);

  NSLog (@"Area = %i, Perimeter = %i",
         [myRect area], [myRect perimeter]);

  NSLog (@"Rectangle2 w = %i, h = %i",
         myRect2.width, myRect2.height);

  [[myRect2 origin] release];
  [myRect2 release];
  [myRect release];
  [myPoint release];

  [pool drain];
  return 0;
}
