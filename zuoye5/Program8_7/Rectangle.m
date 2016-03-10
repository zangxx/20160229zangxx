//
//  Rectangle.m
//  Program8_7
//
//  Created by huangyc on 16/3/10.
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

-(float) perimeter{
    return 2 * (_width + _height);
}

-(BOOL) containsPoint: (XYPoint *) aPoint{
    if((aPoint.x >= origin.x && aPoint.y >= origin.y) && (aPoint.x <= (origin.x + _width) && aPoint.y <= (origin.y + _height))){
        return YES;
    }
    else{
        return NO;
    }
}

-(instancetype) intersect: (id) rect{
    Rectangle *rectNew = [[Rectangle alloc] init];
    XYPoint *pointNew = [[XYPoint alloc] init];
    XYPoint *pointLinShi = [[XYPoint alloc] init];
    [pointNew setX:[rect origin].x andY:[rect origin].y];
    [pointLinShi setX:1 andY:1];
    [rectNew setOrigin:pointLinShi];//rectNew的Origin初始化？
    if([self containsPoint:pointNew]){
        [rectNew origin].x = [rect origin].x;
        [rectNew origin].y = [rect origin].y;
        rectNew.width = [self origin].x + self.width - [rectNew origin].x;
        rectNew.height = [self origin].y + self.height - [rectNew origin].y;
//        NSLog(@"1");
    }
    else{
        pointNew.y += [rect height];
        if([self containsPoint:pointNew]){
//            [rectNew origin].x = [rect origin].x;
//            [rectNew origin].y = [self origin].y;
            [[rectNew origin] setX:[rect origin].x andY:[self origin].y];
            rectNew.width = [self origin].x + self.width - [rectNew origin].x;
            rectNew.height = [rect origin].y + [rect height] - [rectNew origin].y;
//            NSLog(@"rectNew origin: x:%g,y:%g",[rectNew origin].x,[rectNew origin].y);
//            NSLog(@"rect origin: %g,%g",[rect origin].x,[rect origin].y);
//            NSLog(@"self origin: %g,%g",[self origin].x,[self origin].y);
//            NSLog(@"w: %g,h: %g",rectNew.width,rectNew.height);
//            NSLog(@"pointNew: %g,%g",pointNew.x,pointNew.y);
        }
        else{
            pointNew.x += [rect width];
            if([self containsPoint:pointNew]){
                [rectNew origin].x = [self origin].x;
                [rectNew origin].y = [self origin].y;
                rectNew.width = [rect origin].x - rectNew.origin.x;
                rectNew.height = [rect origin].y - rectNew.origin.y;
//                NSLog(@"3");
            }
            else{
                pointNew.y -= [rect height];
                if([self containsPoint:pointNew]){
                    [rectNew origin].x = [self origin].x;
                    [rectNew origin].y = [rect origin].y;
                    rectNew.width = [rect origin].x - [self origin].x;
                    rectNew.height = [self origin].y + self.height- [rect origin].y;
//                    NSLog(@"4");
                }
                else{
                    [rectNew.origin setX:0 andY:0];
                    [rectNew setWidth:0 andHeight:0];
//                    NSLog(@"5");
                }
            }
        }
    }
    return rectNew;
}
@end
