//
//  NSObject+EMObserverRegistration.h
//  响应式编程（KVO）Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (EMObserverRegistration)

- (void)em_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;



@end
