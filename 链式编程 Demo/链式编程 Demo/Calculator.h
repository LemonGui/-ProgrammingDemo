//
//  Calculator.h
//  链式编程 Demo
//
//  Created by Lemon on 16/9/22.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property (nonatomic,assign) int result;

//链式编程：方法返回值必须是block,block返回值必须是该对象
-(Calculator * (^)(int))add;

@end
