//
//  NSObject+Calculator.h
//  链式编程 Demo
//
//  Created by Lemon on 16/9/22.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
@interface NSObject (Calculator)
+(int)makeCalcult:(void(^)(Calculator *))maker;
@end
