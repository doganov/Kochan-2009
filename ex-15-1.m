#import <Foundation/Foundation.h>

@interface NSCalendarDate (ElapsedDays)
-(unsigned long) numberOfElapsedDays: (NSCalendarDate *) theDate;
@end

@implementation NSCalendarDate (ElapsedDays)
-(unsigned long) numberOfElapsedDays: (NSCalendarDate *) theDate
{
  NSInteger days;

  [theDate years: NULL
	  months: NULL
	    days: &days
	   hours: NULL
	 minutes: NULL
	 seconds: NULL
       sinceDate: self];

  return days;
}
@end

int main (int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSCalendarDate *creation = [NSCalendarDate dateWithString: @"2011-12-20 19:34:00 +0200"];
  NSCalendarDate *now = [NSCalendarDate calendarDate];

  NSLog (@"Time of creation: %@", creation);
  NSLog (@"             Now: %@", now);
  NSLog (@"Days elapsed since creation of this program: %lu", [creation numberOfElapsedDays: now]);
  
  [pool drain];
  return 0;
}
