//
//  BaseViewController.m
//  LoginDemo
//
//  Created by wwww on 16/2/26.
//  Copyright © 2016年 WeiJeffrey. All rights reserved.
//

#import "BaseViewController.h"
#import "ViewController.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //如果不是登录界面,返回键更改成自定义的
    if ([self class] != [ViewController class]) {
        UIButton *leftArr = [[UIButton alloc] init];
        leftArr.frame = CGRectMake(0, 0, 19, 32);
        UIImage *img = [UIImage imageNamed:@"fanhui"];
        [leftArr setImage:img forState:UIControlStateNormal];
        [leftArr addTarget:self action:@selector(popView) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *barBt = [[UIBarButtonItem alloc] initWithCustomView:leftArr];
        self.navigationItem.leftBarButtonItem = barBt;
    }
    //设置父类的背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:0.910 green:0.914 blue:0.929 alpha:1.000];
    // Do any additional setup after loading the view.
}
- (void)popView {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
