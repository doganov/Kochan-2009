#import <Foundation/Foundation.h>

#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))


int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"IS_UPPER_CASE('a') = %i", IS_UPPER_CASE('a'));
  NSLog (@"IS_UPPER_CASE('I') = %i", IS_UPPER_CASE('I'));

  [pool drain];
  return 0;
}
