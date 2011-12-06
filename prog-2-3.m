#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"Testing...\n..1\n...2\n....3");

  [pool drain];
  return 0;
}
