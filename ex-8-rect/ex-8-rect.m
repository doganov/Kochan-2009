// Exercises 8.4 to 8.7

#import "Rectangle.h"
#import "Circle.h"
#import "XYPoint.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Rectangle *myRect = [[Rectangle alloc] init];
  XYPoint *myPoint = [[XYPoint alloc] init];

  [myPoint setX: 100 andY: 200];

  [myRect setWidth: 5 andHeight: 8];
  myRect.origin = myPoint;

  NSLog (@"Rectangle w = %i, h = %i",
         myRect.width, myRect.height);

  NSLog (@"Origin at (%i, %i)",
         myRect.origin.x, myRect.origin.y);

  NSLog (@"Area = %i, Perimeter = %i",
         [myRect area], [myRect perimeter]);

  // Exercise 8.4
  XYPoint *vector = [[XYPoint alloc] init];
  [vector setX: 50 andY: 50];
  [myRect translate: vector];
  NSLog (@"Translated origin at (%i, %i)",
         myRect.origin.x, myRect.origin.y);
  [vector release];

  // Exercise 8.5
  Circle *circle = [[Circle alloc] init];
  circle.radius = 10;
  NSLog (@"Circle Area = %i, Circumference = %i",
         [circle area], [circle perimeter]);
  [circle release];
  // We've got the idea, so let's skip the triangle here

  [myRect release];
  [myPoint release];

  [pool drain];
  return 0;
}
