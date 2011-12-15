#import "Rectangle.h"

@interface Square: NSObject
{
  Rectangle *rect;
}
-(Square*) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
-(void) dealloc; // Override to release the Rectangle object's memory
@end

@implementation Square

-(Square*) init
{
  self = [super init];
  rect = [[Rectangle alloc] init];
  
  return self;
}


-(void) dealloc
{
  [rect release];
  [super dealloc];
}

-(Square*) initWithSide: (int) s
{
  self = [self init];
  [self setSide: s];
  
  return self;
}

-(void) setSide: (int) s
{
  [rect setWidth: s andHeight: s];
}

-(int) side
{
  return rect.width;
}

-(int) area
{
  return [rect area];
}

-(int) perimeter
{
  return [rect perimeter];
}

@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Square *mySquare = [[Square alloc] initWithSide: 5];

  NSLog (@"Square s = %i", [mySquare side]);
  NSLog (@"Area = %i, Perimeter = %i",
         [mySquare area], [mySquare perimeter]);
  [mySquare release];

  [pool drain];
  return 0;
}
