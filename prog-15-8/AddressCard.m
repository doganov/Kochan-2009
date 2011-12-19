#import "AddressCard.h"

@implementation AddressCard

-(void) setName: (NSString *) theName
{
  [name release];
  name = [[NSString alloc] initWithString: theName];
}

-(void) setEmail: (NSString *) theEmail
{
  [email release];
  email = [[NSString alloc] initWithString: theEmail];
}

-(NSString *) name
{
  return name;
}

-(NSString *) email
{
  return email;
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
  [name release];
  [email release];
  [super dealloc];
}
@end
