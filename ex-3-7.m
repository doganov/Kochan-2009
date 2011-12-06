#import <Foundation/Foundation.h>

//---- @interface section ----

@interface XYPoint: NSObject
{
  int x;
  int y;
}

-(void) print;
-(void) setX: (int) v;
-(void) setY: (int) v;
-(int) x;
-(int) y;

@end

//---- @implementation section ----

@implementation XYPoint
-(void) print
{
  NSLog (@"%ix%i", x, y);
}

-(void) setX: (int) v
{
  x = v;
}

-(void) setY: (int) v
{
  y = v;
}

-(int) x
{
  return x;
}

-(int) y
{
  return y;
}

@end;

//---- program section ----

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  XYPoint *point;

  point = [[XYPoint alloc] init];

  [point setX: 10];
  [point setY: 24];

  NSLog (@"The coordinates of point are:");
  [point print];
  [point release];

  [pool drain];
  return 0;
}
