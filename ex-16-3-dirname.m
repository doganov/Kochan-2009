#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSProcessInfo.h>
#import <stdio.h>

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSString *name;
  NSProcessInfo *proc = [NSProcessInfo processInfo];
  NSArray *args = [proc arguments];

  // Check for one or two arguments on the command line

  if ([args count] == 2) {
    name = [args objectAtIndex: 1];
  }
  else {
    // error
    NSLog (@"Usage: %@ dir file", [proc processName]);
    return 1;
  }

  name = [name stringByDeletingLastPathComponent];

  printf ("%s\n", [name UTF8String]);

  [pool drain];
  return 0;
}
