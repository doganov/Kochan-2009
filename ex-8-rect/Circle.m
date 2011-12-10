#import "Circle.h"

@implementation Circle

@synthesize radius;

-(int) area
{
  return 3.14 * radius * radius;
}

-(int) perimeter
{
  return 2 * 3.14 * radius;
}

@end
