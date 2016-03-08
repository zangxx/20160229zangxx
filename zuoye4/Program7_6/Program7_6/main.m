//
//  main.m
//  Program7_6
//
//  Created by huangyc on 16/3/8.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *) complexNum;
@end

@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal: (double) a{
    real = a;
}

-(void) setImaginary: (double) b{
    imaginary = b;
}

-(void) print{
    NSLog(@"%g + %gi",real,imaginary);
}

-(double) real{
    return real;
}

-(double) imaginary{
    return imaginary;
}

-(Complex *) add: (Complex *) complexNum{
    self.real += complexNum.real;
    self.imaginary += complexNum.imaginary;
    return self;
}
@end

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
