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
    [theCard list];
  NSLog (@"==================================================================================");
}

-(NSArray *) lookup: (NSString *) str
{
  NSMutableArray *result = [NSMutableArray array];
  
  for ( AddressCard *nextCard in book )
    if ( [nextCard matches: str] )
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
