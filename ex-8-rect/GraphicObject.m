#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, filled, lineColor;

// Those two are abstract methods.  Since there is no language-level
// notion for abstract method in Objective-C, we implement those
// methods to raise an error at runtime.
-(int) area { [self doesNotRecognizeSelector: _cmd]; return 0;}
-(int) perimeter { [self doesNotRecognizeSelector: _cmd]; return 0; }

@end;
