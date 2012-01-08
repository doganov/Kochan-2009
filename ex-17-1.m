#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableString *key = [NSMutableString stringWithString: @"1"];
  NSMutableString *value = [NSMutableString stringWithString: @"one"];
  NSMutableDictionary *dict = [NSMutableDictionary dictionary];
  
  NSLog (@"retain count for key = %x, and value = %x",
         [key retainCount], [value retainCount]);

  [dict setObject: value forKey: key];
  NSLog (@"after adding to dictionary; key = %x, value = %x",
         [key retainCount], [value retainCount]);

  [dict removeObjectForKey: key];
  NSLog (@"after removing from dictionary; key = %x, value = %x",
         [key retainCount], [value retainCount]);

  [pool drain];
  return 0;
}
