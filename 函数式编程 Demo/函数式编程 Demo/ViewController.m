//
//  ViewController.m
//  函数式编程 Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    Calculator * make = [Calculator new];
    
   BOOL isEqual = [[[make add:^int(int result) {
        result+=10;
        result+=90;
        return result;
    }] isEqual:^BOOL(int result) {
       return result == 100;
    }] isEqual];
    
    NSLog(@"--%d--",isEqual);
}





@end
