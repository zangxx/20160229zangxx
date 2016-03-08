//
//  main.m
//  Program7_5
//
//  Created by huangyc on 16/3/8.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void) print;
-(double) convertToNum;
@end

@implementation Fraction
-(void) print{
    NSLog(@"%i/%i",_numerator,_denominator);
}

-(double) convertToNum{
    if(_denominator != 0){
        return (double) _numerator / _denominator;
    }
    else{
        return NAN;
    }
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction * myFraction = [[Fraction alloc] init];
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        NSLog(@"the numerator is %i, and the denominator is %i",myFraction.numerator,myFraction.denominator);
    }
    return 0;
}
