//
//  main.m
//  Program7_2
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
-(void) print: (Boolean) b;
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

-(void) print: (Boolean) b{
    Fraction *f = [[Fraction alloc] init];
    f.numerator = _numerator;
    f.denominator = _denominator;
    if(b == YES){
        [f reduce];
        NSLog(@"%i/%i",f.numerator,f.denominator);
    }
    else{
        NSLog(@"%i/%i",_numerator,_denominator);
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
        [aFraction setTo:1 over:6];
        [bFraction setTo:2 over:6];
        [aFraction add: bFraction];
        
        [aFraction print:YES];
        [aFraction print:NO];
    }
    return 0;
}
