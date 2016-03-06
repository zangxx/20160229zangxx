//
//  main.m
//  Program4_9
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSing;
-(double) reciprocal;
-(double) xSquared;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double) value{
    accumulator = value;
}

-(void) clear{
    accumulator = 0;
}

-(double) accumulator{
    return accumulator;
}

-(double) add: (double) value{
    return accumulator += value;
}

-(double) subtract: (double) value{
    return accumulator -= value;
}

-(double) multiply: (double) value{
    return accumulator *= value;
}

-(double) divide: (double) value{
    return accumulator /= value;
}

-(double) changeSing{
    return -accumulator;
}

-(double) reciprocal{
    return 1/accumulator;
}

-(double) xSquared{
    return accumulator * accumulator;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *deskCalc = [[Calculator alloc] init];
        Calculator *deskCalc2 = [[Calculator alloc] init];
        [deskCalc setAccumulator:100.0];
        [deskCalc2 setAccumulator:200.0];
        NSLog(@"%g + 200 = %g / 15 = %g - 10 = %g * 5 = %g",[deskCalc accumulator],[deskCalc add:200.],[deskCalc divide:15.0],[deskCalc subtract:10.0],[deskCalc multiply:5]);
        [deskCalc clear];
        NSLog(@"clear -> accumulator = %g",[deskCalc accumulator]);
        NSLog(@"deskCalc2 = %g,-deskCalc2 = %g,1/deskCalc2 = %g,deskCalc2^2 = %g",[deskCalc2 accumulator],[deskCalc2 changeSing],[deskCalc2 reciprocal],[deskCalc2 xSquared]);
    }
    return 0;
}
