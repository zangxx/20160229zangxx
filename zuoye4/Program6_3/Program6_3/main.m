//
//  main.m
//  Program6_3
//
//  Created by huangyc on 16/3/7.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

@implementation Fraction
{
    int numerator,denominator;
}

-(void) print{
    if(denominator != 0){
        if(numerator % denominator == 0){
            NSLog(@"%i",numerator / denominator);
        }
        else{
            NSLog(@"%i / %i",numerator,denominator);
        }
    }
    else{
        NSLog(@"denominator = 0");
    }
}

-(void) setNumerator: (int) n{
    numerator = n;
}

-(void) setDenominator: (int) d{
    denominator = d;
}

-(int) numerator{
    return numerator;
}

-(int) denominator{
    return denominator;
}

-(double) convertToNum{
    if(denominator != 0){
        return (double)numerator / denominator;
    }
    else{
        return NAN;
    }
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *cFraction = [[Fraction alloc] init];
        Fraction *dFraction = [[Fraction alloc] init];
        [aFraction setNumerator:1];
        [aFraction setDenominator:4];
        [aFraction print];
        [bFraction setNumerator:0];
        [bFraction setDenominator:4];
        [bFraction print];
        [cFraction setNumerator:1];
        [cFraction setDenominator:0];
        [cFraction print];
        [dFraction setNumerator:4];
        [dFraction setDenominator:1];
        [dFraction print];
        
    }
    return 0;
}
