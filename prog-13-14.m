// Function to copy one string to another
//          pointer version 2

#import <Foundation/Foundation.h>

void copyString (char *to, char *from)
{
  while ( *from )
    *to++ = *from++;

  *to = '\0';
}

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  void copyString (char *to, char *from);
  char string1[] = "A string to be copied.";
  char string2[50];

  copyString (string2, string1);
  NSLog (@"%s", string2);

  copyString (string2, "So is this.");
  NSLog (@"%s", string2);

  [pool drain];
  return 0;
}
