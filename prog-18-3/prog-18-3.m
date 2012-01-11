#import "Fraction.h"

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  Fraction *f1 = [[Fraction alloc] init];
  Fraction *f2;

  [f1 setTo: 2 over: 5];
  f2 = [f1 copy];
  
  [f2 setTo: 1 over: 3];

  [f1 print];
  [f2 print];

  [f1 release];
  [f2 release];
  [pool drain];
  return 0;
}
