//
//  Complex.m
//  Program7_7
//
//  Created by huangyc on 16/3/8.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Complex.h"

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

-(Complex *) add: (Complex *) complexNum{
    self.real += complexNum.real;
    self.imaginary += complexNum.imaginary;
    return self;
}
@end

