//
//  ViewController.m
//  LoginDemo
//
//  Created by wwww on 16/2/26.
//  Copyright © 2016年 WeiJeffrey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtPhoneNr;
@property (weak, nonatomic) IBOutlet UITextField *txtPassWord;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"登录";
    [self configWithTextField:self.txtPhoneNr Title:@"账号"];
    [self configWithTextField:self.txtPassWord Title:@"密码"];
    // Do any additional setup after loading the view, typically from a nib.
}

//设置UITextField的leftView
- (void) configWithTextField:(UITextField*)textField Title:(NSString*)title {
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 0, 35, 30);
    label.text = title;
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 45, 30)];
    [leftView addSubview:label];
    textField.leftViewMode = UITextFieldViewModeAlways;//让它默认一直显示在左边
    textField.leftView = leftView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
