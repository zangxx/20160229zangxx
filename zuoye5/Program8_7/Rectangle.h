//
//  Rectangle.h
//  Program8_7
//
//  Created by huangyc on 16/3/10.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"

@interface Rectangle : NSObject
@property float width,height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
-(BOOL) containsPoint: (XYPoint *) aPoint;
-(instancetype) intersect: (id) rect;
@end
