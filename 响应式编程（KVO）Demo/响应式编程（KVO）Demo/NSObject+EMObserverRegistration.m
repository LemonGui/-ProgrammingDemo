//
//  NSObject+EMObserverRegistration.m
//  响应式编程（KVO）Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "NSObject+EMObserverRegistration.h"
#import <objc/runtime.h>
#import "EMObserve_Person.h"
@implementation NSObject (EMObserverRegistration)
- (void)em_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context{
    
    //1.改变被观察者对象的指针，指向其子类
    object_setClass(self, [EMObserve_Person class]);
    //2.为子类关联观察者
    objc_setAssociatedObject(self, @"observe", observer, OBJC_ASSOCIATION_RETAIN);
    
}
@end
