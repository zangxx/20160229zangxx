//
//  main.m
//  Program6_5
//
//  Created by huangyc on 16/3/7.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number,right_digit;
        NSLog(@"enter your number.");
        scanf(" %i",&number);
        int i = 0;//记录输入number的正负
        if(number < 0){
            number = -number;
            i = 1;
        }
        do{
            right_digit = number % 10;
            NSLog(@"%i",right_digit);
            number /= 10;
        }
        while(number != 0);
        if(i == 1){
            NSLog(@"-");
        }
    }
    return 0;
}
