#import "AddressCard.h"
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSString *aName = @"Julia Kochan";
  NSString *aEmail = @"jewls337@axlc.com";
  AddressCard *card1 = [[AddressCard alloc] init];

  [card1 setName: aName];
  [card1 setEmail: aEmail];

  [card1 print];

  [card1 release];
  [pool drain];
  return 0;
}
