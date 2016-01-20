//
//  OneViewController.m
//  HtmlDemo
//
//  Created by SSS on 16/1/20.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "OneViewController.h"
#import "ViewController.h"

@interface OneViewController ()
{
    UIButton *loginBtn;
}
@end

@implementation OneViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
    self.tabBarController.tabBar.hidden = NO;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    // Do any additional setup after loading the view.
    
    loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame = CGRectMake(30, 130,100, 35);
    [loginBtn setTitle:@"注册" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginBtn.backgroundColor = [UIColor lightGrayColor];
    loginBtn.userInteractionEnabled = YES;
    loginBtn.tag = 100;
    [[loginBtn layer]setCornerRadius: 7.0];
    loginBtn.titleLabel.font = [UIFont boldSystemFontOfSize:15.0];
    [loginBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
}
-(void)btnClick{
    self.tabBarController.tabBar.hidden = YES;
    
    ViewController *tVC = [[ViewController alloc]init];
    [self.navigationController pushViewController:tVC animated:YES];
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
