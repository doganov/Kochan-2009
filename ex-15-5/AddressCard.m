#import "AddressCard.h"
#import <Foundation/NSArray.h>

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

-(BOOL) matches: (NSString *) str;
{
  NSArray *fields = [NSArray arrayWithObjects: name, email, address, phone, nil];
  
  for (NSString *field in fields)
    if ( [field rangeOfString: str options: NSCaseInsensitiveSearch]
         .location != NSNotFound )
      return YES;

  return NO;
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

-(void) list
{
  NSLog (@"%-15s    %-30s %-20s %-13s",
         [name UTF8String],
         [email UTF8String],
         (address != nil) ? [address UTF8String] : "",
         (phone != nil) ? [phone UTF8String] : ""
         );
}


-(void) dealloc
{
  [name release];
  [email release];
  [super dealloc];
}
@end
