#import "Fraction.h"
#import "Complex.h"

int main (int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  Fraction *fraction = [[Fraction alloc] init];
  Complex *complex = [[Complex alloc] init];
  id number = [[Complex alloc] init];

  if ([fraction isMemberOfClass: [Complex class]])
    NSLog (@"fraction is a member of Complex");

  if ([complex isMemberOfClass: [NSObject class]])
    NSLog (@"complex is a member of NSObject");

  if ([complex isKindOfClass: [NSObject class]])
    NSLog (@"complex is a kind of NSObject");

  if ([fraction isKindOfClass: [Fraction class]])
    NSLog (@"fraction is a kind of Fraction");

  if ([fraction respondsToSelector: @selector (print)])
    NSLog (@"fraction responds to print: method");

  if ([complex respondsToSelector: @selector (print)])
    NSLog (@"complex responds to print: method");

  if ([Fraction instancesRespondToSelector: @selector (print)])
    NSLog (@"Fraction instances respond to print: method");

  if ([number respondsToSelector: @selector (print)])
    NSLog (@"number responds to print: method");

  if ([number isKindOfClass: [Complex class]])
    NSLog (@"number is a kind of Complex");

  if ([number respondsToSelector: @selector (release)])
    NSLog (@"number responds to release: method");

  if ([[number class] respondsToSelector: @selector (alloc)])
    NSLog (@"number's class responds to alloc: method");

  [pool drain];
  return 0;
}
