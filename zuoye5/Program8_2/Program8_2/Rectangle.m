//
//  Rectangle.m
//  Program8_2
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

-(XYPoint *) origin{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt{
    origin = pt;
}

-(void) setWidth: (float) w andHeight: (float) h{
    _width = w;
    _height = h;
}

-(float) area{
    return _width * _height;
}

-(float) perimter{
    return 2 * (_width + _height);
}

-(void) translate: (XYPoint *) pt{
    self.origin = pt;
}
@end
