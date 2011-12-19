#import "AddressCard.h"
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSString *aName = @"Julia Kochan";
  NSString *aEmail = @"jewls337@axlc.com";
  NSString *bName = @"Tony Iannino";
  NSString *bEmail = @"tony.iannino@techfitness.com";

  AddressCard *card1 = [[AddressCard alloc] init];
  AddressCard *card2 = [[AddressCard alloc] init];

  [card1 setName: aName andEmail: aEmail];
  [card2 setName: bName andEmail: bEmail];

  [card1 print];
  [card2 print];

  [card1 release];
  [card2 release];
  [pool drain];
  return 0;
}
