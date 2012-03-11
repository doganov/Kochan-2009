#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSEnumerator.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSDictionary *glossary;

  glossary = [NSDictionary dictionaryWithContentsOfFile: @"glossary"];

  for ( NSString *key in glossary )
    NSLog (@"%@: %@", key, [glossary objectForKey: key]);

  [pool drain];
  return 0;
}
