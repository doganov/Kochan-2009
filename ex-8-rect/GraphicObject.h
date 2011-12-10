#import <Foundation/Foundation.h>

@interface GraphicObject: NSObject
{
  int fillColor; // 32-bit color
  BOOL filled; // Is the object filled?
  int lineColor; // 32-bit line-color
}

@property int fillColor, lineColor;
@property BOOL filled;

-(int) area;
-(int) perimeter;

@end
