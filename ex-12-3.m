#import <Foundation/Foundation.h>

#define MAX2(a, b) (((a) > (b)) ? (a) : (b))

#define MAX3(a, b, c) MAX2(a, MAX2(b, c))

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"MAX3(10, 20, 30) = %i", MAX3(10, 20, 30));
  NSLog (@"MAX3(2 * 2, 1 * 1, 0) = %i", MAX3(2 * 2, 1 * 1, 0));

  [pool drain];
  return 0;
}
