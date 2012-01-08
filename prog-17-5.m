// Introduction to reference counting

#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

@interface ClassA : NSObject
{
  NSString *str;
}

-(void) setStr: (NSString *) s;
-(NSString *) str;
-(void) dealloc;
@end

@implementation ClassA
-(void) setStr: (NSString *) s;
{
  // free up old object since we're done with it
  [str autorelease];

  // retain argument in case someone else releases it
  str = [s retain];
}

-(NSString *) str
{
  return str;
}

-(void) dealloc
{
  NSLog (@"ClassA dealloc");
  [str release];
  [super dealloc];
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableString *myStr = [NSMutableString stringWithString: @"A string"];
  ClassA *myA = [[ClassA alloc] init];

  NSLog (@"myStr retain count: %x", [myStr retainCount]);
  [myA autorelease];
  
  [myA setStr: myStr];
  NSLog (@"myStr retain count: %x", [myStr retainCount]);

  [pool drain];
  return 0;
}
