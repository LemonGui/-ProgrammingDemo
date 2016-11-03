//
//  EMObserve_Person.m
//  响应式编程（KVO）Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "EMObserve_Person.h"
#import <objc/runtime.h>
@implementation EMObserve_Person

-(void)setAge:(int)age{
    [super setAge:age];
    
   id observe = objc_getAssociatedObject(self, @"observe");
    
    [observe observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
}

@end
