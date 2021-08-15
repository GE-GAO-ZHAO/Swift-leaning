//
//  ObjcClass.m
//  Swift-01
//
//  Created by 葛高召 on 2021/8/15.
//

#import "ObjcClass.h"
#import <Swift_01-Swift.h>

@interface ObjcClass()
@property (nonatomic,weak) SwiftClass *swiftClass;
@end

@implementation ObjcClass
- (void)testWith:(NSString *)caller callBacker:(SwiftClass *)swiftClass {
    NSLog(@"我是oc方法 %@调用了我",caller);
    self.swiftClass = swiftClass;
    [self.swiftClass receiveCallSuccessWithCaller:@"ObjcClass"];
}



@end
