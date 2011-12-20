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
  NSLog (@"======================= Contents of: %@ ========================", bookName);
  for ( AddressCard *theCard in book )
    NSLog (@"%-15s    %-30s %-20s %-13s",
	   [theCard.name UTF8String],
	   [theCard.email UTF8String],
           (theCard.address != nil) ? [theCard.address UTF8String] : "",
           (theCard.phone != nil) ? [theCard.phone UTF8String] : ""
           );

  NSLog (@"==================================================================================");
}

-(NSArray *) lookup: (NSString *) theName
{
  NSMutableArray *result = [NSMutableArray array];
  
  for ( AddressCard *nextCard in book )
    if ( [[nextCard name] rangeOfString: theName options: NSCaseInsensitiveSearch]
         .location != NSNotFound )
      [result addObject: nextCard];

  return [result count] > 0 ? result : nil;
}

-(void) sort
{
  [book sortUsingSelector: @selector(compareNames:)];
}

-(void) dealloc
{
  [bookName release];
  [book release];
  [super dealloc];
}

@end
