//
//  main.m
//  Program8_7
//
//  Created by huangyc on 16/3/10.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *rect1 = [[Rectangle alloc] init];
        Rectangle *rect2 = [[Rectangle alloc] init];
        Rectangle *newRect = [[Rectangle alloc] init];
        [rect1 setWidth:250 andHeight:75];
        [rect2 setWidth:100 andHeight:180];
        XYPoint *print1 = [[XYPoint alloc] init];
        XYPoint *print2 = [[XYPoint alloc] init];
        [print1 setX:200 andY:420];
        [print2 setX:400 andY:300];
        [rect1 setOrigin:print1];
        [rect2 setOrigin:print2];
        newRect = [rect1 intersect:rect2];
        NSLog(@"新矩形原点:(%g,%g),width:%g,height:%g,area:%g,perimeter:%g",[newRect origin].x,[newRect origin].y,newRect.width,newRect.height,newRect.area,newRect.perimeter);
    }
    return 0;
}
