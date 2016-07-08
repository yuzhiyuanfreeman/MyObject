//
//  BasicInfoViewController.m
//  LoginDemo
//
//  Created by wwww on 16/2/26.
//  Copyright © 2016年 WeiJeffrey. All rights reserved.
//

#import "BasicInfoViewController.h"

@interface BasicInfoViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btAge;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@end

@implementation BasicInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"基本信息";
    self.txtName.attributedPlaceholder = [self setPlaceholderStr:@"请输入您的昵称"];
    // Do any additional setup after loading the view.
}
//传入一个常规字符串,返回一个富文本字符串
- (NSMutableAttributedString*)setPlaceholderStr:(NSString*)str {
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc] initWithString:str];
    UIFont *font = [UIFont systemFontOfSize:18];
    //读取字符串的总长度
    NSUInteger length = [str length];
    //需要改变的字符串的长度,这里设置为全长
    NSRange strRang = NSMakeRange(0, length);
    [aStr addAttribute:NSFontAttributeName value:font range:strRang];
    UIColor *color = [UIColor colorWithRed:0.647 green:0.647 blue:0.651 alpha:1.000];
    [aStr addAttribute:NSForegroundColorAttributeName value:color range:strRang];
    return aStr;
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
