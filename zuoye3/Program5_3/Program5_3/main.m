//
//  main.m
//  Program5_3
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        for(int n = 1;n <= 10;++n){
            int nj = 1;
            for(int i = n;i >= 1;i--){
                nj *= i;
            }
            NSLog(@"n:%-2i,  n!:%i",n,nj);
        }
    }
    return 0;
}
