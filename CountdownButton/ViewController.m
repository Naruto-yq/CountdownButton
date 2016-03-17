//
//  ViewController.m
//  CountdownButton
//
//  Created by 余钦 on 16/3/17.
//  Copyright © 2016年 cmbfae Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
#import "UICountdownButton.h"

@interface ViewController ()
@property(nonatomic, weak)UICountdownButton *countdownBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self SetupSubviews];
}

- (void)SetupSubviews
{
    UICountdownButton *countdownBtn = [[UICountdownButton alloc]init];
    countdownBtn.frame = CGRectMake(100, 100, 150, 50);
    countdownBtn.backgroundColor = [UIColor redColor];
    countdownBtn.second = 5;
    [countdownBtn addTarget:self action:@selector(ClickCountdownBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:countdownBtn];
    self.countdownBtn = countdownBtn;
}

- (void)ClickCountdownBtn:(UICountdownButton *)btn
{
    [btn start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
