// Introduction to reference counting

#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSValue.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSNumber *myInt = [NSNumber numberWithInteger: 100];
  NSNumber *myInt2;
  NSMutableArray *myArr = [NSMutableArray array];

  NSLog (@"myInt retain count = %lx",
         (unsigned long) [myInt retainCount]);

  [myArr addObject: myInt];
  NSLog (@"after adding to array = %lx",
         (unsigned long) [myInt retainCount]);

  myInt2 = myInt;
  NSLog (@"after assignment to myInt2 = %lx",
         (unsigned long) [myInt retainCount]);

  [myInt retain];
  NSLog (@"myInt after retain = %lx",
         (unsigned long) [myInt retainCount]);

  NSLog (@"myInt2 after retain = %lx",
         (unsigned long) [myInt2 retainCount]);

  [myInt release];
  NSLog (@"after release = %lx",
         (unsigned long) [myInt retainCount]);

  [myArr removeObjectAtIndex: 0];
  NSLog (@"after removal from array = %lx",
         (unsigned long) [myInt retainCount]);

  [pool drain];
  return 0;
}
