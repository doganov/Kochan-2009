#import "AddressBook.h"
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
  NSString *aName = @"Julia Kochan";
  NSString *aEmail = @"jewls337@axlc.com";
  NSString *bName = @"Tony Iannino";
  NSString *bEmail = @"tony.iannino@techfitness.com";
  NSString *cName = @"Stephen Kochan";
  NSString *cEmail = @"steve@kochan-wood.com";
  NSString *dName = @"Jamie Baker";
  NSString *dEmail = @"jbaker@kochan-wood.com";  

  AddressCard *card1 = [[AddressCard alloc] init];
  AddressCard *card2 = [[AddressCard alloc] init];
  AddressCard *card3 = [[AddressCard alloc] init];
  AddressCard *card4 = [[AddressCard alloc] init];

  AddressBook *myBook = [AddressBook alloc];
  AddressCard *myCard;
  
  // First set up four address cards
  
  [card1 setName: aName andEmail: aEmail];
  [card2 setName: bName andEmail: bEmail];
  [card3 setName: cName andEmail: cEmail];
  [card4 setName: dName andEmail: dEmail];

  // Now initialize the address book

  myBook = [myBook initWithName: @"Linda's Address Book"];

  NSLog (@"Entries in address book after creation: %i",
	 [myBook entries]);

  // Add some cards to the address book

  [myBook addCard: card1];
  [myBook addCard: card2];
  [myBook addCard: card3];
  [myBook addCard: card4];

  NSLog (@"Entries in address book after adding cards: %i",
	 [myBook entries]);

  // List all the entries in the book now

  [myBook list];

  [card1 release];
  [card2 release];
  [card3 release];
  [card4 release];
  [myBook release];
  [pool drain];
  return 0;
}
