#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSProcessInfo.h>
#import <stdio.h>

BOOL endsWith(NSString *str, NSString *suffix)
{
  if ([str length] < [suffix length])
    return NO;

  NSString *tail = [str substringFromIndex: ([str length] - [suffix length])];
  return [tail compare: suffix] == NSOrderedSame;
}

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSString *name, *suffix;
  NSProcessInfo *proc = [NSProcessInfo processInfo];
  NSArray *args = [proc arguments];

  // Check for one or two arguments on the command line

  if ([args count] == 2) {
    name = [args objectAtIndex: 1];
    suffix = nil;
  }
  else if ([args count] == 3) {
    name = [args objectAtIndex: 1];
    suffix = [args objectAtIndex: 2];
  }
  else {
    // error
    NSLog (@"Usage: %@ dir file", [proc processName]);
    return 1;
  }

  name = [name lastPathComponent];

  // Delete the suffix if possible
  if (suffix && endsWith(name, suffix) && [name length] > [suffix length])
    name = [name substringToIndex: ([name length] - [suffix length])];

  printf ("%s\n", [name UTF8String]);

  [pool drain];
  return 0;
}
