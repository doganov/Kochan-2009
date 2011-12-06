#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  int value1, value2, result;
  value1 = 87;
  value2 = 15;
  result = value1 - value2;

  NSLog (@"The difference between %i and %i is %i", value1, value2, result);
  [pool drain];

  return 0;
}
