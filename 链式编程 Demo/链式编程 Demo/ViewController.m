//
//  ViewController.m
//  链式编程 Demo
//
//  Created by Lemon on 16/9/22.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Calculator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  [NSObject makeCalcult:^(Calculator *maker) {
        maker.add(10).add(20);
        maker.add(30).add(40);
       NSLog(@"----- %d ------",maker.result);
    }];
    
}




@end
