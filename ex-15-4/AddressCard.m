#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email, address, phone;

-(void) setName: (NSString *) theName email: (NSString *) theEmail
{
  self.name = theName;
  self.email = theEmail;
}

-(void) setName: (NSString *) theName
          email: (NSString *) theEmail
        address: (NSString *) theAddress
          phone: (NSString *) thePhone
{
  self.name = theName;
  self.email = theEmail;
  self.address = theAddress;
  self.phone = thePhone;
}

-(NSComparisonResult) compareNames: (id) element
{
  return [name compare: [element name]];
}

-(void) print
{
  NSLog (@"====================================");
  NSLog (@"|                                  |");
  NSLog (@"|  %-31s |", [name UTF8String]);
  NSLog (@"|  %-31s |", [email UTF8String]);
  NSLog (@"|  %-31s |", (address != nil) ? [address UTF8String] : "");
  NSLog (@"|  %-31s |", (phone != nil) ? [phone UTF8String] : "");
  NSLog (@"|                                  |");
  NSLog (@"|                                  |");
  NSLog (@"|       O                  O       |");
  NSLog (@"====================================");
}

-(void) dealloc
{
  [name release];
  [email release];
  [super dealloc];
}
@end
