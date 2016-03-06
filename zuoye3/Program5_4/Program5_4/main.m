//
//  main.m
//  Program5_4
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n,triangularNumber;
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@"n sum from 1 to n");
        NSLog(@"--  -------");
        triangularNumber = 0;
        for(n = 1;n <= 10;++n){
            triangularNumber += n;
            NSLog(@"%-2i       %i",n,triangularNumber);
        }
    }
    return 0;
}
