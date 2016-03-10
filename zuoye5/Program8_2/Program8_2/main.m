//
//  main.m
//  Program8_2
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX:100.12 andY:200.09];
        [myRect setWidth:5.34 andHeight:8.57];
        myRect.origin = myPoint;
        NSLog(@"Rectangle w = %g,h = %g",myRect.width,myRect.height);
        NSLog(@"origin at (%g,%g)",myRect.origin.x,myRect.origin.y);
        NSLog(@"area = %g,perimeter = %g",[myRect area],[myRect perimter]);
    }
    return 0;
}
