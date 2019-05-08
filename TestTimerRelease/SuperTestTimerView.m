//
//  SuperTestTimerView.m
//  TestTimerRelease
//
//  Created by 朱志佳 on 2019/5/8.
//  Copyright © 2019 朱志佳. All rights reserved.
//

#import "SuperTestTimerView.h"
#import "TestTimerView.h"

@interface SuperTestTimerView ()

@property (nonatomic,strong) TestTimerView *testTimerView;

@end

@implementation SuperTestTimerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
        
        [self buildView];
    }
    return self;
}

#pragma mark -初始化方法
-(void)initialize{
    
    //NSLog(@"%s",__func__);
    self.backgroundColor = [UIColor clearColor];
}

- (void)buildView{
    
    [self addSubview:self.testTimerView];
}

- (TestTimerView *)testTimerView {
    if (!_testTimerView) {
        _testTimerView = [[TestTimerView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        _testTimerView.backgroundColor = [UIColor redColor];
    }
    return _testTimerView;
}

#pragma mark -数据赋值
- (void)setObj:(id)obj{
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //setting subViews Frame 设置子控件的frame
    NSLog(@"layoutSubViews view.frame:%@",NSStringFromCGRect(self.frame));
    
}

-(void)dealloc{
    [_testTimerView clear];
    NSLog(@"%@ dealloc",NSStringFromClass([self class]));
}

@end
