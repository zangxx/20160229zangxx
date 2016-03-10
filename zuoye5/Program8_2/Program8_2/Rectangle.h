//
//  Rectangle.h
//  Program8_2
//
//  Created by huangyc on 16/3/9.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
@property float width,height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimter;
-(void) translate: (XYPoint *) pt;
@end
