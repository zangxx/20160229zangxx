//
//  main.m
//  Program6_2
//
//  Created by huangyc on 16/3/7.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator: (double) value{
    accumulator = value;
}

-(void) clear{
    accumulator = 0;
}

-(double) accumulator{
    return accumulator;
}

-(void) add: (double) value{
    accumulator += value;
}

-(void) subtract: (double) value{
    accumulator -= value;
}

-(void) multiply: (double) value{
    accumulator *= value;
}

-(void) divide: (double) value{
    accumulator /= value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        double value1,value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog(@"type in your expression.");
        scanf(" %lf %c %lf",&value1,&operator,&value2);
        [deskCalc setAccumulator:value1];
        if(operator == '+'){
            [deskCalc add: value2];
            NSLog(@"%.2f",[deskCalc accumulator]);
        }
        else if(operator == '-'){
            [deskCalc subtract: value2];
            NSLog(@"%.2f",[deskCalc accumulator]);
        }
        else if(operator == '*'){
            [deskCalc multiply: value2];
            NSLog(@"%.2f",[deskCalc accumulator]);
        }
        else if(operator == '/'){
            if(value2 == 0){
                NSLog(@"division by zero.");
            }
            else{
                [deskCalc divide: value2];
                NSLog(@"%.2f",[deskCalc accumulator]);
            }
        }
        else{
            NSLog(@"unknown operator.");
        }
    }
    return 0;
}
