#import <Foundation/Foundation.h>

#define IS_LOWER_CASE(x) (((x) >= 'a') && ((x) <= 'z'))
#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))
#define IS_ALPHABETIC(x) (IS_UPPER_CASE(x) || IS_LOWER_CASE(x))
#define IS_ZERO(x) (((x) >= '0') && ((x) <= '9'))
#define IS_SPECIAL(x) (!(IS_ZERO(x) || IS_ALPHABETIC(x)))

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"IS_SPECIAL('a') = %i", IS_SPECIAL('a'));
  NSLog (@"IS_SPECIAL('I') = %i", IS_SPECIAL('I'));
  NSLog (@"IS_SPECIAL('-') = %i", IS_SPECIAL('-'));
  NSLog (@"IS_SPECIAL('0') = %i", IS_SPECIAL('0'));

  [pool drain];
  return 0;
}
