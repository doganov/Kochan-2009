#import <Foundation/Foundation.h>

#define INT(i) [NSNumber numberWithInt: (i)]

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSArray *input = [NSArray arrayWithObjects:
                              INT(5), INT(5), INT(5),
                            INT(1), INT(1), INT(2),
                            INT(4), INT(5), INT(6),
                            INT(1), INT(2), INT(3),
                            nil];

  // build frequency chart
  NSCountedSet *chart = [NSCountedSet setWithArray: input];

  // print the chart
  NSMutableArray *items = [NSMutableArray arrayWithArray: [chart allObjects]];
  [items sortUsingSelector: @selector(compare:)];
  for (NSNumber *item in items) {
    NSMutableString *bar = [NSMutableString string];
    int i = [chart countForObject: item];
    while (i-- > 0)
      [bar appendString: @"*"];
    NSLog (@"%4@ | %@", item, bar);
  }

  [pool drain];
  return 0;
}
