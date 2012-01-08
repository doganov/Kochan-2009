#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableString *obj1 = [NSMutableString stringWithString: @"1"];
  NSMutableString *obj2 = [NSMutableString stringWithString: @"2"];
  NSMutableArray *array = [NSMutableArray array];
  
  NSLog (@"retain count for obj1 = %x, and obj2 = %x",
         [obj1 retainCount], [obj2 retainCount]);

  [array addObject: obj1];
  NSLog (@"after adding obj1 to array: obj1 = %x, obj2 = %x",
         [obj1 retainCount], [obj2 retainCount]);

  [array replaceObjectAtIndex: 0 withObject: obj2];
  NSLog (@"after replacing obj1 with obj2 in array; obj1 = %x, obj2 = %x",
         [obj1 retainCount], [obj2 retainCount]);

  [array removeObjectAtIndex: 0];
  NSLog (@"after removing obj2 from array; obj1 = %x, obj2 = %x",
         [obj1 retainCount], [obj2 retainCount]);

  [pool drain];
  return 0;
}
