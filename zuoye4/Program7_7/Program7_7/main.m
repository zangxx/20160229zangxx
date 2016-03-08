//
//  main.m
//  Program7_7
//
//  Created by huangyc on 16/3/8.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        [aComplex setReal:5.3];
        [aComplex setImaginary:7];
        bComplex.real = 2.7;
        bComplex.imaginary = 4;
        [aComplex print];
        NSLog(@"+");
        [bComplex print];
        NSLog(@"=");
        [aComplex add: bComplex];
        NSLog(@"%g + %gi",[aComplex real],[aComplex imaginary]);
    }
    return 0;
}
