#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  char c = '\377'; // 0x255
  int i = c;

  if (i < 0)
    NSLog (@"Char is signed");
  else
    NSLog (@"Char is unsigned");

  [pool drain];
  return 0;
}
