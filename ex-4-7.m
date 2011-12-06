#import <Foundation/Foundation.h>

@interface Rectangle: NSObject
{
  int width;
  int height;
}

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

@implementation Rectangle

-(void) setWidth: (int) w
{
  width = w;
}

-(void) setHeight: (int) h
{
  height = h;
}

-(int) width
{
  return width;
}

-(int) height
{
  return height;
}


-(int) area
{
  return width * height;
}

-(int) perimeter
{
  return (width + height) * 2;
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Rectangle *rect = [[Rectangle alloc] init];

  [rect setWidth: 320];
  [rect setHeight: 200];
  NSLog (@"rect width:%i height:%i area:%i perimeter:%i",
	 [rect width], [rect height], [rect area], [rect perimeter]);

  [rect release];
  [pool drain];
  return 0;
}

