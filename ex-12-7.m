#import <Foundation/Foundation.h>

#define ABSOLUTE_VALUE(x) (((x) < 0) ? (-(x)) : (x))

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"ABSOLUTE_VALUE(0) = %i", ABSOLUTE_VALUE(0));
  NSLog (@"ABSOLUTE_VALUE(5) = %i", ABSOLUTE_VALUE(5));
  NSLog (@"ABSOLUTE_VALUE(-5) = %i", ABSOLUTE_VALUE(-5));
  NSLog (@"ABSOLUTE_VALUE(5 - 6) = %i", ABSOLUTE_VALUE(5 - 6));

  [pool drain];
  return 0;
}
