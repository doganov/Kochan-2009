#import "MathOps.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *a = [[Fraction alloc] init];
  Fraction *b = [[Fraction alloc] init];
  Fraction *result;

  [a setTo: 1 over: 3];
  [b setTo: 2 over: 5];

  [a print]; NSLog (@"  +"); [b print]; NSLog (@"-----");
  result = [a add: b];
  [result print];
  NSLog (@"\n");
  [result release];

  [a print]; NSLog (@"  -"); [b print]; NSLog (@"-----");
  result = [a sub: b];
  [result print];
  NSLog (@"\n");
  [result release];

  [a print]; NSLog (@"  *"); [b print]; NSLog (@"-----");
  result = [a mul: b];
  [result print];
  NSLog (@"\n");
  [result release];

  [a print]; NSLog (@"  /"); [b print]; NSLog (@"-----");
  result = [a div: b];
  [result print];
  NSLog (@"\n");
  [result release];

  NSLog (@"invert"); [a print]; NSLog (@"-----");
  result = [a invert];
  [result print];
  NSLog (@"\n");
  [result release];
  
  [a release];
  [b release];

  [pool drain];
  return 0;
}
