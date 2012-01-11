#import <Foundation/NSObject.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSMutableArray *dataArray = [NSMutableArray
				arrayWithObjects:
				  @"one", @"two", @"three", @"four", nil];
  NSMutableArray *dataArray2;

  // simple assignment

  dataArray2 = dataArray;
  [dataArray2 removeObjectAtIndex: 0];

  NSLog (@"dataArray:");
  for ( NSString *elem in dataArray )
    NSLog (@"   %@", elem);

  NSLog (@"dataArray2:");
  for ( NSString *elem in dataArray2 )
    NSLog (@"   %@", elem);

  // try a Copy, then remove the first element from the copy

  dataArray2 = [dataArray mutableCopy];
  [dataArray2 removeObjectAtIndex: 0];

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
