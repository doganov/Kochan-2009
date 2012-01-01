#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSPathUtilities.h>
#import <Foundation/NSProcessInfo.h>

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSFileManager *fm;
  NSDirectoryEnumerator *walker;
  NSString *dir, *file, *current;
  NSProcessInfo *proc = [NSProcessInfo processInfo];
  NSArray *args = [proc arguments];

  fm = [NSFileManager defaultManager];

  // Check for two or more arguments on the command line

  if ([args count] != 3) {
    // error
    NSLog (@"Usage: %@ dir file", [proc processName]);
    return 1;
  }

  dir = [args objectAtIndex: 1];
  file = [args objectAtIndex: 2];

  walker = [fm enumeratorAtPath: dir];

  BOOL found = NO;
  while ((current = [walker nextObject]) != nil) {
    if ([[current lastPathComponent] compare: file] == NSOrderedSame) {
      NSLog ([dir stringByAppendingPathComponent: current]);
      found = YES;
    }
  }

  if (!found) {
    NSLog (@"Not found.");
    return 5;
  }

  [pool drain];
  return 0;
}
