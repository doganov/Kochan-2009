#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>

@interface Foo: NSObject
{
  int x;
}
@end

@implementation Foo
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Foo *myFoo = [[Foo alloc] init];
  
  NSLog (@"myFoo retain count = %x", [myFoo retainCount]);

  [pool drain];
  NSLog (@"after pool drain = %x", [myFoo retainCount]);

  pool = [[NSAutoreleasePool alloc] init];
  [myFoo autorelease];
  NSLog (@"after autorelease = %x", [myFoo retainCount]);

  [myFoo retain];
  NSLog (@"after retain = %x", [myFoo retainCount]);

  [pool drain];
  NSLog (@"after second pool drain = %x", [myFoo retainCount]);

  [myFoo release];
  return 0;
}
