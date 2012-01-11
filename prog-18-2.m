#import <Foundation/NSObject.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableArray *dataArray =
    [NSMutableArray arrayWithObjects: 
		      [NSMutableString stringWithString: @"one"],
		    [NSMutableString stringWithString: @"two"],
		    [NSMutableString stringWithString: @"three"],
		    [NSMutableString stringWithString: @"four"],
		    nil];
  NSMutableArray *dataArray2;
  NSMutableString *mStr;

  NSLog (@"dataArray:");
  for ( NSString *elem in dataArray )
    NSLog (@"   %@", elem);

  // make a copy, then change one of the strings

  dataArray2 = [dataArray mutableCopy];

  mStr = [dataArray objectAtIndex: 0];
  [mStr appendString: @"ONE"];

  NSLog (@"dataArray:");
  for ( NSString *elem in dataArray )
    NSLog (@"   %@", elem);

  NSLog (@"dataArray2:");
  for ( NSString *elem in dataArray2 )
    NSLog (@"   %@", elem);

  [dataArray2 release];
  [pool drain];
  return 0;
}
