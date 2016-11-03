//
//  ViewController.m
//  响应式编程（KVO）Demo
//
//  Created by Lemon on 16/9/23.
//  Copyright © 2016年 Lemon. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+EMObserverRegistration.h"
@interface ViewController ()
@property (nonatomic,strong) Person * p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person * p = [Person new];
    p.age = 20;
    _p = p;
//    [p addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    [p em_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    //NSKVONotifying_Person
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"----%d-----",_p.age);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    _p.age ++;
}

-(void)dealloc{
    
    [_p removeObserver:self forKeyPath:@"age"];
}

@end
