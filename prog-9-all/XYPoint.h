#import <Foundation/Foundation.h>

@interface XYPoint: NSObject
{
  int x;
  int y;
}
@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;
@end;
