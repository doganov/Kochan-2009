#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"In Objective-C, lowercase letters are significant.");
  NSLog (@"main is where program execution begins.");
  NSLog (@"Open and closed braces enclose program statements in a routine.");
  NSLog (@"All program statements must be terminated by a semicolon.");

  [pool drain];
  return 0;
}
