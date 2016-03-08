//
//  main.m
//  Program6_1
//
//  Created by huangyc on 16/3/7.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int a,b;
        NSLog(@"请输入2个整数a、b: ");
        scanf(" %i %i",&a,&b);
        if(a % b == 0){
            NSLog(@"a可以被b整除");
        }
        else
            NSLog(@"a不能被b整出");
    }
    return 0;
}
