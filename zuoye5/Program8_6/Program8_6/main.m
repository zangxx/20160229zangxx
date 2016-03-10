//
//  main.m
//  Program8_6
//
//  Created by huangyc on 16/3/10.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *rect = [[Rectangle alloc] init];
        XYPoint *pointOrigin = [[XYPoint alloc]init];
        XYPoint *point1 = [[XYPoint alloc]init];
        [pointOrigin setX:10 andY:10];//原点
        [point1 setX:10 andY:14];
        [rect setOrigin:pointOrigin];
        [rect setWidth:3 andHeight:4];
        NSLog(@"%@",[rect containsPoint:point1]?@"包含":@"不包含");
    }
    return 0;
}
