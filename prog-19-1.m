#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSDictionary *glossary =
    [NSDictionary dictionaryWithObjectsAndKeys:
                    @"A class defined so other classes can inherit from it.", @"abstract class",
                  @"To implement all the methods defined in a protocol", @"adopt",
                  @"Storing an object for later use.", @"archiving",
                  nil
     ];

  if ([glossary writeToFile: @"glossary" atomically: YES] == NO)
    NSLog (@"Save to file failed!");

  [pool drain];
  return 0;
}
