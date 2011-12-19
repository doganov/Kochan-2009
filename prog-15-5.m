// Basic String Operations -- Mutable Strings

#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSString *str1 = @"This is string A";
  NSString *search, *replace;
  NSMutableString *mstr;
  NSRange substr;

  // Create mutable string from nonmutable

  mstr = [NSMutableString stringWithString: str1];
  NSLog (@"%@", mstr);

  // Insert characters

  [mstr insertString: @" mutable" atIndex: 7];
  NSLog (@"%@", mstr);

  // Effective concatenation if insert at end

  [mstr insertString: @" and string B" atIndex: [mstr length]];
  NSLog (@"%@", mstr);
  
  // Or can use appendString directly

  [mstr appendString: @" and string C"];
  NSLog (@"%@", mstr);

  // Delete substring based on range

  [mstr deleteCharactersInRange: NSMakeRange (16, 13)];
  NSLog (@"%@", mstr);

  // Find range first and then use it for deletion

  substr = [mstr rangeOfString: @"string B and "];
  if (substr.location != NSNotFound) {
    [mstr deleteCharactersInRange: substr];
    NSLog (@"%@", mstr);
  }

  // Set the mutable string directly

  [mstr setString: @"This is a string A"];
  NSLog (@"%@", mstr);

  // Now let's replace a range of chars with another
  
  [mstr replaceCharactersInRange: NSMakeRange(8, 8)
		      withString: @"a mutable string"];
  NSLog (@"%@", mstr);

  // Search and replace

  search = @"This is";
  replace = @"An example of";

  substr = [mstr rangeOfString: search];

  if (substr.location != NSNotFound) {
    [mstr replaceCharactersInRange: substr
			withString: replace];
    NSLog (@"%@", mstr);
  }

  // Search and replace all occurrences

  search = @"a";
  replace = @"X";

  substr = [mstr rangeOfString: search];

  while (substr.location != NSNotFound) {
    [mstr replaceCharactersInRange: substr
			withString: replace];
    substr = [mstr rangeOfString: search];
  }

  NSLog (@"%@", mstr);

  [pool drain];
  return 0;
}
