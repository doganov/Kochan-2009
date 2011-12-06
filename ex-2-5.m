#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  int sum;
  /* COMPUTE RESULT */
  sum = 25 + 37 - 19;
  /* DISPLAY RESULTS */
  NSLog (@"The answer is %i", sum);

  [pool drain];
  return 0;
}
