#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSDictionary *origin = [NSDictionary
                           dictionaryWithObjectsAndKeys:
                             [@"one" mutableCopy], @"1",
                           @"two", @"2",
                           @"three", @"3",
                           nil];

  NSDictionary *immutable = [origin copy];
  NSDictionary *mutable = [origin mutableCopy];

  [[origin objectForKey: @"1"] setString: @"ONE"];

  NSLog (@"If copies are shallow, all strings below should be uppercased:");

  NSLog ([origin objectForKey: @"1"]);
  NSLog ([immutable objectForKey: @"1"]);
  NSLog ([mutable objectForKey: @"1"]);

  [immutable release];
  [mutable release];
  [pool drain];
  return 0;
}
