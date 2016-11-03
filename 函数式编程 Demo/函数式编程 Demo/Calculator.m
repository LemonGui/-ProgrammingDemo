//
//  Calculator.m
//  函数式编程 Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//函数式编程：方法返回对象自身，参数是block；block参数是要操作的数，block返回值是操作的结果，

-(instancetype)add:(int (^)(int))block{
   _result = block(_result);
    return self;
}

-(instancetype)isEqual:(BOOL (^)(int))block{
    
    _isEqual = block(_result);
    return self;
}
@end
