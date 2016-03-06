//
//  main.m
//  Program4_7
//
//  Created by huangyc on 16/3/6.
//  Copyright © 2016年 huangyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

@implementation Rectangle
{
    int width,height,area,perimeter;
}

-(void) setWidth: (int) w{
    width = w;
}

-(void) setHeight: (int) h{
    height = h;
}

-(int) width{
    return width;
}

-(int) height{
    return height;
}

-(int) area{
    return area = width * height;
}

-(int) perimeter{
    return perimeter = 2 * (width + height);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *aRectangle = [[Rectangle alloc] init];
        [aRectangle setWidth:3];
        [aRectangle setHeight:4];
        NSLog(@"width = %i,perimeter = %i,area = %i,perimeter = %i",[aRectangle width],[aRectangle height],[aRectangle area],[aRectangle perimeter]);
    }
    return 0;
}
