#import <Foundation/Foundation.h>

@interface XYPoint: NSObject <NSCopying>
{
  int x;
  int y;
}
@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;
@end;
