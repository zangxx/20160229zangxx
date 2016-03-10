//
//  main.m
//  Program8_8
//
//  Created by huangyc on 16/3/10.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
    }
    return 0;
}
