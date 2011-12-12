#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Fraction *f = [[Fraction alloc] init];
  [f noSuchMethod];
  NSLog (@"Execution continues!");
  [f release];
  [pool drain];
  return 0;
}
