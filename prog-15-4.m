// Basic String Operations -- Continued

#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSString *str1 = @"This is string A";
  NSString *str2 = @"This is string B";
  NSString *res;
  NSRange subRange;

  // Extract first 3 chars from string

  res = [str1 substringToIndex: 3];
  NSLog (@"First 3 chars of str1: %@", res);

  // Extract chars to end of string starting at index 5

  res = [str1 substringFromIndex: 5];
  NSLog (@"Chars from index 5 of str1: %@", res);

  // Extract chars from index 8 through 13 (6 chars)

  res = [[str1 substringFromIndex: 8] substringToIndex: 6];
  NSLog (@"Chars from index 8 through 13: %@", res);

  // An easier way to do the same thing

  res = [str1 substringWithRange: NSMakeRange (8, 6)];
  NSLog (@"Chars from index 8 through 13: %@", res);

  // Locate one string inside another

  subRange = [str1 rangeOfString: @"string A"];
  NSLog (@"Substring is at index %lu, length is %lu",
	 subRange.location, subRange.length);

  subRange = [str1 rangeOfString: @"string B"];

  if (subRange.location == NSNotFound)
    NSLog (@"String not found");
  else
    NSLog (@"String is at index %lu, length is %lu",
	   subRange.location, subRange.length);

  [pool drain];
  return 0;
}
