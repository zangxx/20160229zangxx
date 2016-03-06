//
//  main.m
//  Program5_5
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        for(;;){
            int n,triangularNumber;
            NSLog(@"请输入要计算的n：");
            scanf("%i",&n);
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"n:%i,   triangulernumber:%i",n,triangularNumber);
        }
    }
    return 0;
}
