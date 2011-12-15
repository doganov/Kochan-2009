#import "Comparison.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *a = [[Fraction alloc] init];
  Fraction *b = [[Fraction alloc] init];
  Fraction *c = [[Fraction alloc] init];
  int cmp;

  [a setTo: 1 over: 3];
  [b setTo: 2 over: 5];
  [c setTo: 4 over: 10];

  // Test isEqualTo

  [a print]; NSLog (@"is equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [a isEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [b print]; NSLog (@"is equal to"); [a print]; NSLog (@"-----");
  NSLog (@"%@", [b isEqualTo: a] ? @"YES" : @"NO");
  NSLog (@"\n");

  [b print]; NSLog (@"is equal to"); [b print]; NSLog (@"-----");
  NSLog (@"%@", [b isEqualTo: b] ? @"YES" : @"NO");
  NSLog (@"\n");

  [b print]; NSLog (@"is equal to"); [c print]; NSLog (@"-----");
  NSLog (@"%@", [b isEqualTo: c] ? @"YES" : @"NO");
  NSLog (@"\n");

  // Test compare
  
  [a print];
  cmp = [a compare: b];
  NSLog (@"%@", cmp > 0 ? @" > " : (cmp < 0 ? @" < " : @" ="));
  [b print];
  NSLog (@"\n");

  [b print];
  cmp = [b compare: a];
  NSLog (@"%@", cmp > 0 ? @" > " : (cmp < 0 ? @" < " : @" ="));
  [a print];
  NSLog (@"\n");

  [b print];
  cmp = [b compare: b];
  NSLog (@"%@", cmp > 0 ? @" > " : (cmp < 0 ? @" < " : @" ="));
  [b print];
  NSLog (@"\n");

  [b print];
  cmp = [b compare: c];
  NSLog (@"%@", cmp > 0 ? @" > " : (cmp < 0 ? @" < " : @" ="));
  [c print];
  NSLog (@"\n");

  [a release];
  [b release];
  [c release];

  [pool drain];
  return 0;
}
