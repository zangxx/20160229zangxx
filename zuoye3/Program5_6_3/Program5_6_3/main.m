//
//  main.m
//  Program5_6_3
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n = 1;
        while(n <= 10){
            int nj = 1;
            int i = n;
            while(i >= 1){
                nj *= i;
                i--;
            }
            NSLog(@"n:%-2i,  n!:%i",n,nj);
            n++;
        }
    }
    return 0;
}
