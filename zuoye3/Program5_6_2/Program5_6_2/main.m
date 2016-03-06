//
//  main.m
//  Program5_6_2
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int triangularNumber = 0;
        int n = 5;
        while(n <= 50){
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"n:%2i,  triangularNumber:%4i",n,triangularNumber);
            n += 5;
        }
    }
    return 0;
}
