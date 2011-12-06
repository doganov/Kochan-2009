#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"Programming is fun!");
  NSLog (@"Programming in Objective-C is even more fun!");

  [pool drain];
  return 0;
}
