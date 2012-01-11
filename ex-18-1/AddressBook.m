#import "AddressBook.h"

@interface AddressBook (Private)
-(id) initWithName: (NSString *) name andCards: (NSArray *) cards;
@end

@implementation AddressBook

// set up the AddressBook's name and an empty book

-(id) initWithName: (NSString *) name
{
  return [self initWithName: name andCards: nil];
}

-(id) initWithName: (NSString *) name andCards: (NSArray *) cards
{
  self = [super init];
  if (self) {
    bookName = [name copy];
    book = (cards != nil) ? [cards copy] : [[NSMutableArray alloc] init];
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

-(BOOL) removeName: (NSString *) theName
{
  NSArray *result = [self lookup: theName];
  if ((result != nil) && ([result count] == 1)) {
    [self removeCard: [result objectAtIndex: 0]];
    return YES;
  }
  else
    return NO;
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
  NSLog (@"[AddressBook dealloc]");
  [bookName release];
  [book release];
  [super dealloc];
}

-(id) copyWithZone: (NSZone *) zone
{
  AddressBook *result =
    [[AddressBook allocWithZone: zone] initWithName: bookName andCards: book];

  return result;
}

@end
