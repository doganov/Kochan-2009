#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSProcessInfo.h>
#import <Foundation/NSPathUtilities.h>

@interface NSString (TempFiles)
+(NSString*) temporaryFileName;
@end

@implementation NSString (TempFiles)
+(NSString*) temporaryFileName
{  
  return
    [NSTemporaryDirectory() stringByAppendingPathComponent:
                           [[NSProcessInfo processInfo] globallyUniqueString]];
}
@end

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  int i = 10;
  while (i-- > 0)
    NSLog (@"%@", [NSString temporaryFileName]);
  
  [pool drain];
  return 0;
}
