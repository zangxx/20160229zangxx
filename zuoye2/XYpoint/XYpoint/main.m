//
//  main.m
//  XYpoint
//
//  Created by huangyc on 16/3/1.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYpoint: NSObject

-(void) print;
-(void) setX:(int) a;
-(void) setY:(int) b;
-(int) getX;
-(int) getY;

@end

@implementation XYpoint
{
    int x;
    int y;
}

-(void) print
{
    NSLog(@"(%i,%i)",x,y);
}

-(void) setX: (int) a
{
    x = a;
}

-(void) setY: (int) b
{
    y = b;
}

-(int) getX
{
    return x;
}

-(int) getY
{
    return y;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XYpoint *myXYpoint =[[XYpoint alloc] init];
        [myXYpoint setX:1];
        [myXYpoint setY:2];
        [myXYpoint print];
        NSLog(@"x: %i, y: %i",[myXYpoint getX],[myXYpoint getY]);
    }
    return 0;
}
