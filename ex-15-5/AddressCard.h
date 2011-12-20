#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface AddressCard: NSObject
{
  NSString *name;
  NSString *email;
  NSString *address;
  NSString *phone;
}

@property (copy, nonatomic) NSString *name, *email, *address, *phone;

-(void) setName: (NSString *) theName email: (NSString *) theEmail;
-(void) setName: (NSString *) theName
          email: (NSString *) theEmail
        address: (NSString *) theAddress
          phone: (NSString *) thePhone;

-(BOOL) matches: (NSString *) str;
-(NSComparisonResult) compareNames: (id) element;
-(void) print;
-(void) list;

@end
