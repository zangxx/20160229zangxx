//
//  main.m
//  Program7_4
//
//  Created by huangyc on 16/3/8.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void) setTo: (int) n over: (int) d;
-(void) add: (Fraction *) f;
-(void) reduce;
-(void) print;
-(double) convertToNum;
@end

@implementation Fraction
-(void) setTo: (int) n over: (int) d{
    _numerator = n;
    _denominator = d;
}

-(void) add: (Fraction *) f{
    _numerator = _numerator * f.denominator + _denominator * f.numerator;
    _denominator *= f.denominator;
}

-(void) reduce{
    int u = _numerator;
    int v = _denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    _numerator /= u;
    _denominator /= u;
}

-(void) print{
    Fraction *f = [[Fraction alloc] init];
    f.numerator = _numerator;
    f.denominator = _denominator;
    if(f.numerator < f.denominator){
        [f reduce];
        NSLog(@"%i/%i",f.numerator,f.denominator);
    }
    else if(f.denominator != 0){
        int a = f.numerator / f.denominator;//整数部分
        if(f.numerator % f.denominator == 0){
            NSLog(@"%i",a);
        }
        else{
            f.numerator %= f.denominator;
            [f reduce];
            NSLog(@"%i %i/%i",a,f.numerator,f.denominator);
        }
    }
    else{
        NSLog(@"输入错误");
    }
}

-(double) convertToNum{
    if (_denominator != 0)
        return (double) _numerator / _denominator;
    else
        return NAN;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        [aFraction setTo:12 over:6];
        [bFraction setTo:2 over:6];
        [aFraction add: bFraction];
        [aFraction print];
    }
    return 0;
}
