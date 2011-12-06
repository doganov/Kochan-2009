#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  int sum;

  sum = 50 + 25;
  NSLog (@"The sum of 50 and 25 is %i", sum);
  [pool drain];

  return 0;
}
