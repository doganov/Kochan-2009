#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSIndexSet.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSPathUtilities.h>
#import <Foundation/NSProcessInfo.h>

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSFileManager *fm;
  NSArray *sources;
  NSString *dest;
  BOOL isDir;
  NSProcessInfo *proc = [NSProcessInfo processInfo];
  NSArray *args = [proc arguments];

  fm = [NSFileManager defaultManager];

  // Check for two or more arguments on the command line

  if ([args count] < 3) {
    // error
    NSLog (@"Usage: %@ src ... dest", [proc processName]);
    return 1;
  }

  sources = [args objectsAtIndexes:
                    [NSIndexSet indexSetWithIndexesInRange:
                                  NSMakeRange (1, [args count] - 2)]];
  dest = [args lastObject];

  [fm fileExistsAtPath: dest isDirectory: &isDir];
  
  if ([sources count] > 1) {
    // many sources, so destinaton must be a directory

    if (isDir == NO) {
      NSLog (@"Error: dest must be a directory when using multiple sources");
      return 5;
    }
  }

  NSString *destination;
  for (NSString *source in sources) {
    // Make sure the source file can be read

    if ([fm isReadableFileAtPath: source] == NO) {
      NSLog (@"Can't read %@", source);
      return 2;
    }

    // See if the destination file is a directory
    // if it is, add the source to the end of the destination
    destination = (isDir == NO) ?
      dest
      :
      [dest stringByAppendingPathComponent:
              [source lastPathComponent]];

    // Remove the destination file if it already exists
    [fm removeFileAtPath: destination handler: nil];

    // Okay, time to perform the copy
    if ([fm copyPath: source toPath: destination handler: nil] == NO) {
      NSLog (@"Copy failed!");
      return 3;
    }

    NSLog (@"Copy of %@ to %@ succeeded!", source, destination);
  }

  [pool drain];
  return 0;
}
