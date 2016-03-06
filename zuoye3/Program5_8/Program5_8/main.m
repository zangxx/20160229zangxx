//
//  main.m
//  Program5_8
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        while(1){
            int n,sum=0;
            NSLog(@"请输入n：");
            scanf("%i",&n);
            while(n != 0){
                sum += (n % 10);
                n /= 10;
            }
            NSLog(@"sum:%i",sum);
        }
    }
    return 0;
}
