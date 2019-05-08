//
//  SecondViewController.m
//  TestTimerRelease
//
//  Created by 朱志佳 on 2019/5/8.
//  Copyright © 2019 朱志佳. All rights reserved.
//

#import "SecondViewController.h"
#import "TestTimerView.h"
#import "SuperTestTimerView.h"

@interface SecondViewController ()

@property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) TestTimerView *testTimerView;
@property (nonatomic,strong) SuperTestTimerView *superTestTimerView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self test];
    //[self test1];
    [self test2];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    [self clear];
}

- (void)test {
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.4 target:self selector:@selector(draw) userInfo:nil repeats:YES];
}

- (void)test1 {
    
    [self.view addSubview:self.testTimerView];
}

- (TestTimerView *)testTimerView {
    if (!_testTimerView) {
        _testTimerView = [[TestTimerView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        _testTimerView.backgroundColor = [UIColor redColor];
    }
    return _testTimerView;
}


- (void)test2 {
    [self.view addSubview:self.superTestTimerView];
}

- (SuperTestTimerView *)superTestTimerView {
    if (!_superTestTimerView) {
        _superTestTimerView = [[SuperTestTimerView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        _superTestTimerView.backgroundColor = [UIColor redColor];
    }
    return _superTestTimerView;
}

- (void)draw {
    NSLog(@"%@##%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

#pragma mark clear
- (void)clear {
    if (self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

- (void)dealloc
{ 
    [_testTimerView clear];
    NSLog(@"%@##%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
