// Function to sum the elements of an integer array
#import <Foundation/Foundation.h>

int arraySum (int array[], int n)
{
  int sum = 0, *ptr;
  int *arrayEnd = array + n;

  for (ptr = array; ptr < arrayEnd; ++ptr)
    sum += *ptr;

  return sum;
}

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int arraySum (int array[], int n);
  int values[10] = { 3, 7, -9, 3, 6, -1, 7, 9, 1, -5 };

  NSLog (@"The sum is %i", arraySum (values, 10));

  [pool drain];
  return 0;
}
