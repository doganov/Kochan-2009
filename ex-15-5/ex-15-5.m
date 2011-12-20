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
  NSString *cAddress = @"Objective Str., C 2";
  NSString *cPhone = @"800-234-234";
  NSString *dName = @"Jamie Baker";
  NSString *dEmail = @"jbaker@kochan-wood.com";  

  AddressCard *card1 = [[AddressCard alloc] init];
  AddressCard *card2 = [[AddressCard alloc] init];
  AddressCard *card3 = [[AddressCard alloc] init];
  AddressCard *card4 = [[AddressCard alloc] init];

  AddressBook *myBook = [AddressBook alloc];
  NSArray *result;
  
  // First set up four address cards
  
  [card1 setName: aName email: aEmail];
  [card2 setName: bName email: bEmail];
  [card3 setName: cName email: cEmail address: cAddress phone: cPhone];
  [card4 setName: dName email: dEmail];

  myBook = [myBook initWithName: @"Linda's Address Book"];

  // Add some cards to the address book

  [myBook addCard: card1];
  [myBook addCard: card2];
  [myBook addCard: card3];
  [myBook addCard: card4];

  // List all cards
  [myBook list];
  
  // Look up a person by partial name

  NSLog (@"Lookup: kochan");
  result = [myBook lookup: @"kochan"];

  if (result != nil)
    for (AddressCard *nextCard in result)
      [nextCard print];
  else
    NSLog (@"Not found!");

  [card1 release];
  [card2 release];
  [card3 release];
  [card4 release];
  [myBook release];
  [pool drain];
  return 0;
}
