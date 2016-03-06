//
//  main.m
//  Program5_2
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int triangularNumber = 0;
        for(int n = 5;n <= 50;n += 5){
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"n:%2i,  triangularNumber:%4i",n,triangularNumber);
        }
    }
    return 0;
}
