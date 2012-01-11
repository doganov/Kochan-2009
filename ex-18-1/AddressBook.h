#import <Foundation/NSArray.h>
#import "AddressCard.h"

@interface AddressBook: NSObject <NSCopying>
{
  NSString *bookName;
  NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(BOOL) removeName: (NSString *) theName;

-(NSArray *) lookup: (NSString *) theName;

-(int) entries;
-(void) list;
-(void) sort;

@end
