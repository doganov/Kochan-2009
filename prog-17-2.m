// Reference counting with string objects

#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSString *myStr1 = @"Constant string";
  NSString *myStr2 = [NSString stringWithString: @"string 2"];
  NSMutableString *myStr3 = [NSMutableString stringWithString: @"string 3"];
  NSMutableArray *myArr = [NSMutableArray array];

  NSLog (@"Retain count: myStr1: %lx, myStr2: %lx, myStr3: %lx",
         (unsigned long) [myStr1 retainCount],
         (unsigned long) [myStr2 retainCount],
         (unsigned long) [myStr3 retainCount]);

  [myArr addObject: myStr1];
  [myArr addObject: myStr2];
  [myArr addObject: myStr3];

  NSLog (@"Retain count: myStr1: %lx, myStr2: %lx, myStr3: %lx",
         (unsigned long) [myStr1 retainCount],
         (unsigned long) [myStr2 retainCount],
         (unsigned long) [myStr3 retainCount]);

  [myArr addObject: myStr1];
  [myArr addObject: myStr2];
  [myArr addObject: myStr3];

  NSLog (@"Retain count: myStr1: %lx, myStr2: %lx, myStr3: %lx",
         (unsigned long) [myStr1 retainCount],
         (unsigned long) [myStr2 retainCount],
         (unsigned long) [myStr3 retainCount]);

  [myStr1 retain];
  [myStr2 retain];
  [myStr3 retain];

  NSLog (@"Retain count: myStr1: %lx, myStr2: %lx, myStr3: %lx",
         (unsigned long) [myStr1 retainCount],
         (unsigned long) [myStr2 retainCount],
         (unsigned long) [myStr3 retainCount]);

  // Bring the reference count of myStr3 back down to 2
  [myStr3 release];

  [pool drain];
  return 0;
}
