#import <Foundation/NSObject.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  int i;
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  // Create an array to contain the month names

  NSArray *monthNames = [NSArray arrayWithObjects:
				   @"January", @"February", @"March", @"April",
				 @"May", @"June", @"July", @"August", @"September",
				 @"October", @"November", @"December", nil ];

  // Now list all the elements in the array

  NSLog (@"Month   Name");
  NSLog (@"=====   ====");

  for (i = 0; i < 12; ++i)
    NSLog (@" %2i     %@", i + 1, [monthNames objectAtIndex: i]);

  [pool drain];
  return 0;
}
