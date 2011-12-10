#import <Foundation/Foundation.h>
#import <XYPoint.h>

@interface Rectangle: NSObject
{
  int width;
  int height;
  XYPoint *origin;
}

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(void) translate: (XYPoint *) vector;
-(int) area;
-(int) perimeter;
@end;
