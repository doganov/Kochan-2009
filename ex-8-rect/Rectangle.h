#import <Foundation/Foundation.h>
#import <XYPoint.h>
#import <GraphicObject.h>

@interface Rectangle: GraphicObject
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
@end;
