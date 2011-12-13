#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  enum Day { Sunday,
	     Monday,
	     Tuesday,
	     Wednesday,
	     Thursday,
	     Friday,
	   Saturday };

  enum Day ruby = Tuesday;

  NSLog (@"The day is %i", ruby);

  [pool drain];
  return 0;
}
