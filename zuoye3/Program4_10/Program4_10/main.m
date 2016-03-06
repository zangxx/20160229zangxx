//
//  main.m
//  Program4_10
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
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubtract: (double) value;
@end

@implementation Calculator
{
    double accumulator,memory;
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

-(double) memoryClear{
    return memory = 0;
}

-(double) memoryStore{
    return memory = accumulator;
}

-(double) memoryRecall{
    return accumulator = memory;
}

-(double) memoryAdd: (double) value{
    return memory += value;
}

-(double) memorySubtract: (double) value{
    return memory -= value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator:100.0];
        [deskCalc memoryStore];//存储
        NSLog(@"%g + 200 = %g / 15 = %g - 10 = %g * 5 = %g",[deskCalc accumulator],[deskCalc add:200.],[deskCalc divide:15.0],[deskCalc subtract:10.0],[deskCalc multiply:5]);
        [deskCalc clear];
        NSLog(@"clear -> accumulator = %g",[deskCalc accumulator]);
        NSLog(@"recall -> accumulator = %g",[deskCalc memoryRecall]);//读取存储的数
        NSLog(@"memory + 10 = %g,memory - 20 = %g",[deskCalc memoryAdd:10],[deskCalc memorySubtract:20]);
        NSLog(@"recall -> accumulator = %g",[deskCalc memoryRecall]);
        NSLog(@"memory clear -> memory = %g",[deskCalc memoryClear]);
    }
    return 0;
}
