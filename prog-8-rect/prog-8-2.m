#import "Rectangle.h"
#import <stdio.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Rectangle *myRect = [[Rectangle alloc] init];

  [myRect setWidth: 5 andHeight: 8];

  NSLog (@"Rectangle: w = %i, h = %i",
         myRect.width, myRect.height);
  NSLog (@"Area = %i, Perimeter = %i",
         [myRect area], [myRect perimeter]);
  [myRect release];

  [pool drain];
  return 0;
}
