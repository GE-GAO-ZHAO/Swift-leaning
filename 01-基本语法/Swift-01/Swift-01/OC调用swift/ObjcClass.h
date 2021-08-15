//
//  ObjcClass.h
//  Swift-01
//
//  Created by 葛高召 on 2021/8/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SwiftClass;
@interface ObjcClass : NSObject
- (void)testWith:(NSString *)caller callBacker:(SwiftClass *)swiftClass;

@end

NS_ASSUME_NONNULL_END
