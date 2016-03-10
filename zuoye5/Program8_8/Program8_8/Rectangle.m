//
//  Rectangle.m
//  Program8_8
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
-(void) setWidth: (int) w andHeight: (int) h{
    _width = w;
    _height = h;
}

-(int) area{
    return _width * _height;
}

-(int) perimter{
    return 2 * (_width + _height);
}

-(void) draw{
    for(int w = 0;w < _width;w++){
        printf("-");
    }
    printf("\n");
    for(int h = 0;h < _height;h++){
        for(int w = 0;w < _width;w++){
            if(w == 0 || w == _width - 1){
                printf("|");
            }else{
                printf(" ");
            }
        }
        printf("\n");
    }
    for(int w = 0;w < _width;w++){
        printf("-");
    }
}
@end
