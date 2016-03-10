//
//  main.m
//  Program8_1
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}
-(void) initVar;
-(void) printA;
@end

@implementation ClassA
-(void) initVar{
    x = 100;
}

-(void) printA{
    NSLog(@"classA: %i",x);
}
@end

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar{
    NSLog(@"x = %i",x);
}
@end

@interface ClassC : ClassB
-(void) initVar;
@end

@implementation ClassC
-(void) initVar{
    x = 300;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ClassA *classA = [[ClassA alloc] init];
        ClassB *classB = [[ClassB alloc] init];
        ClassC *classC = [[ClassC alloc] init];
        [classA initVar];
        [classB initVar];
        [classC initVar];
        [classA printA];
        [classB printVar];
        [classC printVar];
    }
    return 0;
}
