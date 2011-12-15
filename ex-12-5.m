#import <Foundation/Foundation.h>

#define IS_LOWER_CASE(x) (((x) >= 'a') && ((x) <= 'z'))
#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))
#define IS_ALPHABETIC(x) (IS_UPPER_CASE(x) || IS_LOWER_CASE(x))

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog (@"IS_ALPHABETIC('a') = %i", IS_ALPHABETIC('a'));
  NSLog (@"IS_ALPHABETIC('I') = %i", IS_ALPHABETIC('I'));
  NSLog (@"IS_ALPHABETIC('-') = %i", IS_ALPHABETIC('-'));

  [pool drain];
  return 0;
}
