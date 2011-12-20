#import "AddressBook.h"

@implementation AddressBook;

// set up the AddressBook's name and an empty book

-(id) initWithName: (NSString *) name
{
  self = [super init];

  if (self) {
    bookName = [[NSString alloc] initWithString: name];
    book = [[NSMutableArray alloc] init];    
  }

  return self;
}

-(void) addCard: (AddressCard *) theCard
{
  [book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard
{
  [book removeObjectIdenticalTo: theCard];
}

-(int) entries
{
  return [book count];
}

-(void) list
{
  NSLog (@"======== Contents of: %@ =========", bookName);
  for ( AddressCard *theCard in book )
    NSLog (@"%-20s    %-32s",
	   [theCard.name UTF8String],
	   [theCard.email UTF8String]);

  NSLog (@"====================================================");
}

-(AddressCard *) lookup: (NSString *) theName
{
  for ( AddressCard *nextCard in book )
    if ( [[nextCard name] caseInsensitiveCompare: theName] == NSOrderedSame )
      return nextCard;

  return nil;
}

-(void) dealloc
{
  [bookName release];
  [book release];
  [super dealloc];
}

@end
