#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA: NSObject
{
  int x;
}

-(void) initVar;
-(void) printVar;
@end

@implementation ClassA
-(void) initVar
{
  x = 100;
}

-(void) printVar // added method
{
  NSLog (@"x = %i", x);
}
@end

// ClassB declaration and definition

@interface ClassB: ClassA
-(void) initVar;
@end

@implementation ClassB
-(void) initVar // overriden method
{
  x = 200;
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  ClassA *a = [[ClassA alloc] init];
  ClassB *b = [[ClassB alloc] init];

  [a initVar]; // uses ClassA method
  [a printVar]; // reveal value of x
  
  [b initVar]; // use overriding ClassB method
  [b printVar]; // reveal value of x

  [a release];
  [b release];

  [pool drain];
  return 0;
}
