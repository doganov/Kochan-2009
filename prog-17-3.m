// Introduction to reference counting

#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>

@interface ClassA : NSObject
{
  NSString *str;
}

-(void) setStr: (NSString *) s;
-(NSString *) str;
@end

@implementation ClassA
-(void) setStr: (NSString *) s;
{
  str = s;
}

-(NSString *) str
{
  return str;
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableString *myStr = [NSMutableString stringWithString: @"A string"];
  ClassA *myA = [[ClassA alloc] init];

  NSLog (@"myStr retain count: %x", [myStr retainCount]);
  
  [myA setStr: myStr];
  NSLog (@"myStr retain count: %x", [myStr retainCount]);

  [myA release];

  [pool drain];
  return 0;
}
