// Program to illustrate structure pointers
#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  struct date
  {
    int month;
    int day;
    int year;
  };

  struct date today, *datePtr;

  datePtr = &today;
  datePtr->month = 9;
  datePtr->day = 25;
  datePtr->year = 2009;

  NSLog (@"Today's date is %i/%i/%.2i.",
	 datePtr->month, datePtr->day, datePtr->year % 100);

  [pool drain];
  return 0;
}
