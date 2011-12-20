#import <Foundation/NSArray.h>
#import "AddressCard.h"

@interface AddressBook: NSObject
{
  NSString *bookName;
  NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;

-(AddressCard *) lookup: (NSString *) theName;

-(int) entries;
-(void) list;

@end
