#import "Fraction.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Fraction *f = [[Fraction alloc] init];

  @try {
    [f noSuchMethod];
  }
  @catch (NSException *exception) {
    NSLog (@"Caught %@%@", [exception name], [exception reason]);
  }
  
  NSLog (@"Execution continues!");
  [f release];
  [pool drain];
  return 0;
}
