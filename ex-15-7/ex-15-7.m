#import "Fraction.h"

#define FRACT(n, d) [[Fraction alloc] initWith: (n) over: (d)]

// Apply selector over all items sequentially.
void foreach(NSArray *items, SEL selector)
{
  for (id item in items)
    [item performSelector: selector];
}

// Apply selector to the items cumulatively, from left to right
id reduce(NSArray *items, SEL selector, id initializer)
{
  id result = initializer;
  id next;
  for (id item in items) {
    next = [result performSelector: selector withObject: item];
    [result release];
    result = next;
  }
  return result;
}

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Initialize fractions
  NSArray *fractions = [NSArray arrayWithObjects:
				  FRACT(1, 5),
				FRACT(2, 10),
				FRACT(1, 2),
				nil];

  // Release all fractions once, so they are retained only by the array itself
  foreach (fractions, @selector(release));

  Fraction *result = FRACT(0, 1);
  result = reduce (fractions, @selector(add:), result);

  [result print];

  [result release];
  [pool drain];
  return 0;
}
