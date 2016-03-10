//
//  main.m
//  Program8_5
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{BOOL filled;}
@property int fillColor,lineColor;
-(void) setFillColor: (int) fillC andLineColor: (int) lineC;
@end

@implementation GraphicObject
-(void) setFillColor: (int) fillC andLineColor: (int) lineC{
    _fillColor = fillC;
    _lineColor = lineC;
    if(_fillColor){
        filled = YES;
    }
    else{
        filled = NO;
    }
    NSLog(@"fillcolor:%i,filled:%@,linecolor:%i",_fillColor,filled?@"YES":@"NO",_lineColor);
}
@end

@interface Rectangle : GraphicObject
@property float width,height;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
@end

@implementation Rectangle
-(void) setWidth: (float) w andHeight: (float) h{
    _width = w;
    _height = h;
}

-(float) area{
    return _width * _height;
}

-(float) perimeter{
    return 2 * (_width + _height);
}
@end

@interface Circle : GraphicObject
@property float r;
-(float) area;
-(float) perimeter;
@end

@implementation Circle
-(float) area{
    return _r * _r * 3.14;
}

-(float) perimeter{
    return _r * 3.14 * 2;
}
@end

@interface Triangle : GraphicObject
@property float bian1,bian2,bian3,gao1;
-(void) setBian1: (float) b1 Bian2: (float) b2 Bian3:(float) b3 Gao1: (float) g1;
-(float) area;
-(float) perimeter;
@end

@implementation Triangle
-(void) setBian1: (float) b1 Bian2: (float) b2 Bian3:(float) b3 Gao1: (float) g1{
    _bian1 = b1;
    _bian2 = b2;
    _bian3 = b3;
    _gao1 = g1;
}

-(float) area{
    return _bian1 * _gao1 / 2;
}
-(float) perimeter{
    return _bian1 + _bian2 + _bian3;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *rectangleA = [[Rectangle alloc] init];
        Circle *circleB = [[Circle alloc] init];
        Triangle *triangleC = [[Triangle alloc] init];
        [rectangleA setWidth:1 andHeight:2];
        [rectangleA setFillColor:3 andLineColor:4];
        NSLog(@"area:%g,perimeter:%g",[rectangleA area],[rectangleA perimeter]);
        [circleB setR:5];
        [circleB setFillColor:6 andLineColor:7];
        NSLog(@"area:%g,perimeter:%g",[circleB area],[circleB perimeter]);
        [triangleC setBian1:3 Bian2:4 Bian3:5 Gao1:4];
        [triangleC setFillColor:0 andLineColor:9];
        NSLog(@"area:%g,perimeter:%g",[triangleC area],[triangleC perimeter]);
    }
    return 0;
}
