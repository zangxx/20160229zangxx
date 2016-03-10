//
//  main.m
//  Program8_3
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

//ClassB和ClassB2有共同的超类：NSObject、ClassA
//NSObject(父类)-ClassA（子类）-ClassB、ClassB2（孙类）
//ClassB的超类：NSObject、ClassA
//ClassB2的超类：NSObject、ClassA
//

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

@interface ClassB2 : ClassA
-(void) initVar;
@end

@implementation ClassB2
-(void) initVar{
    x = 300;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ClassA *classA = [[ClassA alloc] init];
        ClassB *classB = [[ClassB alloc] init];
        ClassB2 *classB2 = [[ClassB2 alloc] init];
        [classA initVar];
        [classB initVar];
        [classB2 initVar];
        [classA printA];
        [classB printVar];
        [classB2 printA];
    }
    return 0;
}
