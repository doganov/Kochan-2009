// Pointers as arguments to functions
#import <Foundation/Foundation.h>

void exchange (int *pint1, int *pint2)
{
  int temp;

  temp = *pint1;
  *pint1 = *pint2;
  *pint2 = temp;
}

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  void exchange (int *pint1, int *pint2);
  int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;

  NSLog (@"i1 = %i, i2 = %i", i1, i2);

  exchange (p1, p2);
  NSLog (@"i1 = %i, i2 = %i", i1, i2);

  exchange (p1, p2);
  NSLog (@"i1 = %i, i2 = %i", i1, i2);

  [pool drain];
  return 0;
}
