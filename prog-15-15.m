#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSMutableDictionary *glossary =
    [NSMutableDictionary dictionaryWithObjectsAndKeys:
			   @"A class defined so other classes can inherit from it",
			 @"abstract class",
			 @"To implement all the methods defined in a protocol",
			 @"adopt",
			 @"Storing and object for later use",
			 @"archiving",
			 nil
     ];

  // Print all key-value pairs from the dictionary

  for (NSString *key in glossary)
    NSLog (@"%@: %@", key, [glossary objectForKey: key]);

  [pool drain];
  return 0;
}
