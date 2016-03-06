//
//  main.m
//  Program4_6
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
@end

@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal: (double) a{
    real = a;
}

-(void) setImaginary: (double) b{
    imaginary = b;
}

-(void) print{
    NSLog(@"%g + %gi",real,imaginary);
}

-(double) real{
    return real;
}

-(double) imaginary{
    return imaginary;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Complex *myComplex = [[Complex alloc] init];
        [myComplex setReal:1.2];
        [myComplex setImaginary:3.45];
        [myComplex print];
        NSLog(@"real = %g,imaginary = %g",[myComplex real],[myComplex imaginary]);
    }
    return 0;
}
