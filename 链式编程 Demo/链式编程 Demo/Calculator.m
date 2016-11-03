//
//  Calculator.m
//  链式编程 Demo
//
//  Created by Lemon on 16/9/22.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(Calculator *(^)(int))add{
    return ^(int num){
        _result+=num;
        return self;
    };
}
@end
