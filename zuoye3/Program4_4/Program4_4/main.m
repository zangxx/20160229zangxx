//
//  main.m
//  Program4_4
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        float x = 2.55;
        float a = 3 * x * x * x - 5 * x * x + 6;
        NSLog(@"when x = %g,3x^3 - 5x^2 + 6 = %g",x,a);
    }
    return 0;
}
