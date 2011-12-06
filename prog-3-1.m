// Simple program to work with fractions
#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int numerator = 1;
  int denominator = 3;
  NSLog (@"The fraction is %i/%i", numerator, denominator);

  [pool drain];
  return 0;
}
