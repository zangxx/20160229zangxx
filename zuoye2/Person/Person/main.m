//
//  main.m
//  Person
//
//  Created by huangyc on 16/3/4.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
-(int) age;
-(NSString *) name;
-(void) setAge: (int) a;
-(void) setName: (NSString *) n;
-(void) print;
@end

@implementation Person
{
    int age;
    NSString *name;
}

-(void) setAge:(int)a{
    age = a;
}

-(void) setName:(NSString *)n{
    name = n;
}

-(int) age{
    return age;
}

-(NSString *) name{
    return name;
}

-(void) print{
    NSLog(@"age is : %i,name is %@",age,name);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *firstPerson = [[Person alloc] init];
        [firstPerson setAge:25];
        [firstPerson setName:@"huangxx"];
        [firstPerson print];
        NSLog(@"firstPerson's age is : %i,firstPerson's name is %@",[firstPerson age],[firstPerson name]);
    }
    return 0;
}
