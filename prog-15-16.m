#import <Foundation/NSObject.h>
#import <Foundation/NSSet.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>

// Create an integer object
#define INTOBJ(v) [NSNumber numberWithInteger: v]

// Add a print method to NSSet with the Printing category

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)
-(void) print {
  printf ("{");

  for (NSNumber *element in self)
    printf (" %li ", (long) [element integerValue]);

  printf ("}\n");
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSMutableSet *set1 = [NSMutableSet setWithObjects:
				       INTOBJ(1), INTOBJ(3), INTOBJ(5), INTOBJ(10), nil];
  NSSet *set2 = [NSSet setWithObjects:
			 INTOBJ(-5), INTOBJ(100), INTOBJ(3), INTOBJ(5), nil];
  NSSet *set3 = [NSSet setWithObjects:
			 INTOBJ(12), INTOBJ(200), INTOBJ(3), nil];

  NSLog (@"set1: ");
  [set1 print];
  NSLog (@"set2: ");
  [set2 print];

  // Equality test
  if ([set1 isEqualToSet: set2] == YES)
    NSLog (@"set1 equals set2");
  else
    NSLog (@"set1 is not equal to set2");

  // Membership test

  if ([set1 containsObject: INTOBJ(10)] == YES)
    NSLog (@"set1 contains 10");
  else
    NSLog (@"set1 does not contain 10");

  if ([set2 containsObject: INTOBJ(10)] == YES)
    NSLog (@"set2 contains 10");
  else
    NSLog (@"set2 does not contain 10");

  // add and remove objects from mutable set set1

  [set1 addObject: INTOBJ(4)];
  [set1 removeObject: INTOBJ(10)];
  NSLog (@"set1 after adding 4 and removing 10: ");
  [set1 print];

  // get intersection of two sets

  [set1 intersectSet: set2];
  NSLog (@"set1 intersect set2: ");
  [set1 print];

  // union of two sets
  [set1 unionSet: set3];
  NSLog (@"set1 union set3: ");
  [set1 print];

  [pool drain];
  return 0;
}
