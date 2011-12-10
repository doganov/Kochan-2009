// Overriding methods

#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA: NSObject
{
  int x;
}

-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
  x = 100;
}
@end

// ClassB declaration and definition

@interface ClassB: ClassA
-(void) initVar;
-(void) printVar;
@end

@implementation ClassB
-(void) initVar // overriden method
{
  x = 200;
}

-(void) printVar // added method
{
  NSLog (@"x = %i", x);
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  ClassB *b = [[ClassB alloc] init];

  [b initVar]; // uses overriding method in B

  [b printVar]; // reveal value of x
  [b release];

  [pool drain];
  return 0;
}
