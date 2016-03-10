//
//  Rectangle.h
//  Program8_8
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,height;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimter;
-(void) draw;
@end
