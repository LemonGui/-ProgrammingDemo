//
//  Calculator.h
//  函数式编程 Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic,assign) int  result;
@property (nonatomic,assign) BOOL  isEqual;

-(instancetype)add:(int(^)(int))block;

-(instancetype)isEqual:(BOOL(^)(int))block;

@end
