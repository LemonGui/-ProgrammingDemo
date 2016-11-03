//
//  NSObject+Calculator.m
//  链式编程 Demo
//
//  Created by Lemon on 16/9/22.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "NSObject+Calculator.h"

@implementation NSObject (Calculator)
+(int)makeCalcult:(void (^)(Calculator *))block{
    Calculator * maker = [Calculator new];
    block(maker);
    return maker.result;
}
@end
