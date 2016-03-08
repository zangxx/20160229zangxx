//
//  main.m
//  Program6_6
//
//  Created by huangyc on 16/3/7.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number,left_digit;
        int number2 = 0;//number左右倒着写
        NSLog(@"enter your number.");
        scanf(" %i",&number);
        int i = 0;//记录输入number的正负
        if(number < 0){
            number = -number;
            i = 1;
        }
        if(i == 1){
            NSLog(@"-");
        }
        number2 = 1;//在number左右倒写的最高位前加个1
        if(number == 0){
            NSLog(@"zero");
        }
        else{
            while(number != 0){
                number2 = number2 * 10 + number % 10;
                number /= 10;
            }
            do{
                left_digit = number2 % 10;
                number2 /= 10;
                switch (left_digit){
                    case 0:
                        NSLog(@"zero");
                        break;
                    case 1:
                        NSLog(@"one");
                        break;
                    case 2:
                        NSLog(@"two");
                        break;
                    case 3:
                        NSLog(@"three");
                        break;
                    case 4:
                        NSLog(@"four");
                        break;
                    case 5:
                        NSLog(@"five");
                        break;
                    case 6:
                        NSLog(@"six");
                        break;
                    case 7:
                        NSLog(@"seven");
                        break;
                    case 8:
                        NSLog(@"eight");
                        break;
                    case 9:
                        NSLog(@"nine");
                        break;
                    default:
                        NSLog(@"?????");
                        break;
                }
            }
            while(number2 != 1);//防止输出另外加的1
        }
    }
    return 0;
}
