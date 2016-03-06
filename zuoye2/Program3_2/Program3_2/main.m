//
//  main.m
//  Program3_2
//
//  Created by huangyc on 16/3/3.
//  Copyright © 2016年 huangyc. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface phone : NSObject
-(void) call: (NSString *) pN;
-(void) sendMessage: (NSString *) m;
-(void) listenToMusic;
-(void) takeAPicture;
-(void) callPhoneNumber;
@end

@implementation phone
{
    NSString *phoneNumber;
    NSString *message;
}
-(void) call: (NSString *) pN{
    phoneNumber = pN;
}
-(void) sendMessage: (NSString *) m{
    message = m;
    NSLog(@"message is %@",message);
}
-(void) listenToMusic{
    NSLog(@"play musice.");
}
-(void) takeAPicture{
    NSLog(@"picture");
}
-(void) callPhoneNumber{
    NSLog(@"callPhoneNumber is %@",phoneNumber);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        phone *myPhone = [[phone alloc] init];
        [myPhone call: @"123456789"];
        [myPhone callPhoneNumber];
        [myPhone sendMessage: @"hello world"];
        [myPhone listenToMusic];
        [myPhone takeAPicture];
    }
    return 0;
}
