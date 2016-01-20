//
//  BaseViewController.m
//  regularcamera
//
//  Created by jfdream on 15/12/4.
//  Copyright © 2015年 2015 Wise Sight. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>
@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationController.navigationBar.translucent=NO;
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navi_bg"] forBarMetrics:UIBarMetricsDefault];
}
-(void)setNavigationBarImage:(NSString *)barImageName
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:barImageName] forBarMetrics:UIBarMetricsDefault];
}
-(void)setLeftImage:(NSString *)imageName withMethod:(SEL)method
{
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * image=[UIImage imageNamed:imageName];
    CGSize imageSize=image.size;
    btn.frame=CGRectMake(0, 0, imageSize.width+2, imageSize.height+2);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:method forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * leftBarButon=[[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationController.interactivePopGestureRecognizer.delegate=self;
    self.navigationItem.leftBarButtonItem=leftBarButon;
//    self.navigationItem.backBarButtonItem=leftBarButon;
}
-(void)setLeftTitle:(NSString *)title withMethod:(SEL)method
{
    UIButton * leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0.0, 0.0, 30.0, 27.0);
    [leftButton setTitle:title forState:UIControlStateNormal];
    [leftButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [leftButton setTitleColor:[UIColor colorWithWhite:1.000 alpha:0.330] forState:UIControlStateHighlighted];
    leftButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0f];
    [leftButton addTarget:self action:method forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem=rightButtonItem;
}
-(void)setRightTitle:(NSString *)title withMethod:(SEL)method
{
    UIButton * rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0.0, 0.0, 30, 27.0);
    [rightButton setTitle:title forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [rightButton setTitleColor:[UIColor colorWithWhite:1.000 alpha:0.330] forState:UIControlStateHighlighted];
    rightButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0f];
    [rightButton addTarget:self action:method forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem=rightButtonItem;
}
-(void)setRightImage:(NSString *)imageName withMethod:(SEL)method
{
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * image=[UIImage imageNamed:imageName];
    CGSize imageSize=image.size;
    btn.frame=CGRectMake(0, 0, imageSize.width+2, imageSize.height+2);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:method forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * rightBarButon=[[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem=rightBarButon;
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}
-(BOOL)shouldAutorotate{
    return NO;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait|UIInterfaceOrientationMaskPortraitUpsideDown;
}
-(void)setNavigationBarTitleColor:(UIColor *)titleColor
{
    self.navigationController.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName:titleColor};
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
