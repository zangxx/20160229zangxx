//
//  main.m
//  Program6_4
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
        while(1){
            double number;
            char operator;
            NSLog(@"输入number和operator:");
            scanf(" %lf %c",&number,&operator);
            Calculator *deskCalc = [[Calculator alloc] init];
            if(operator == 'S'){
                [deskCalc setAccumulator:number];
                NSLog(@"= %lf",[deskCalc accumulator]);
                while(1){
                    scanf("%lf %c",&number,&operator);
                    if(operator == '+'){
                        [deskCalc add: number];
                        NSLog(@"= %lf",[deskCalc accumulator]);
                        continue;
                    }
                    else if(operator == '-'){
                        [deskCalc subtract: number];
                        NSLog(@"= %lf",[deskCalc accumulator]);
                        continue;
                    }
                    else if(operator == '*'){
                        [deskCalc multiply: number];
                        NSLog(@"= %lf",[deskCalc accumulator]);
                        continue;
                    }
                    else if(operator == '/'){
                        if(number == 0){
                            NSLog(@"division by zero.");
                            continue;
                        }
                        else{
                            [deskCalc divide: number];
                            NSLog(@"= %lf",[deskCalc accumulator]);
                            continue;
                        }
                    }
                    else if(operator == 'E'){
                        NSLog(@"= %lf\nEnd of calculations.",[deskCalc accumulator]);
                        break;
                    }
                    else{
                        NSLog(@"unknown operator.");
                        NSLog(@"= %lf",[deskCalc accumulator]);
                        continue;
                    }
                }
            }
            else{
                NSLog(@"输入S开始");
                //continue;
            }
            continue;
        }
    }
    return 0;
}
