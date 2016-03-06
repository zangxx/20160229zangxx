//
//  main.m
//  Program5_7
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number,right_digit;
        NSLog(@"entry your number.");
        scanf("%i",&number);
        while(number != 0){
            right_digit = number % 10;
            NSLog(@"%i",right_digit);//输入负数时，输出的余数为负数。
            number /= 10;
        }
    }
    return 0;
}
