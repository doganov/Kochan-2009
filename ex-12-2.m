#import <Foundation/Foundation.h>

#define MIN(a, b) (((a) < (b)) ? (a) : (b))

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"MIN(10, 20) = %i", MIN(10, 20));
  NSLog (@"MIN(2 * 2, 1 * 1) = %i", MIN(2 * 2, 1 * 1));

  [pool drain];
  return 0;
}
