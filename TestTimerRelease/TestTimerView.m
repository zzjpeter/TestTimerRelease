//
//  TestTimerView.m
//  TestTimerRelease
//
//  Created by 朱志佳 on 2019/5/8.
//  Copyright © 2019 朱志佳. All rights reserved.
//

#import "TestTimerView.h"

@interface TestTimerView ()

@property (nonatomic,strong) NSTimer *timer;

@end

@implementation TestTimerView

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
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.4 target:self selector:@selector(draw) userInfo:nil repeats:YES];
    
}

- (void)draw {
    NSLog(@"%@##%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

#pragma mark -数据赋值
- (void)setObj:(id)obj{
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //setting subViews Frame 设置子控件的frame
    NSLog(@"layoutSubViews view.frame:%@",NSStringFromCGRect(self.frame));
    
}

#pragma mark clear
- (void)clear {
    if (self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

-(void)dealloc{
    NSLog(@"%@ dealloc",NSStringFromClass([self class]));
}

@end
