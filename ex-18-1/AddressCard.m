#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
  self.name = theName;
  self.email = theEmail;
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
  NSLog (@"|                                  |");
  NSLog (@"|                                  |");
  NSLog (@"|       O                  O       |");
  NSLog (@"====================================");
}

-(void) dealloc
{
  NSLog (@"[AddressCard dealloc]");
  [name release];
  [email release];
  [super dealloc];
}
@end
