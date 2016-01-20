//
//  ViewController.m
//  HtmlDemo
//
//  Created by SSS on 15/12/30.
//  Copyright © 2015年 ST. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIWebView *shopWebView;
    NSString *urlStr;
}
@end

@implementation ViewController
@synthesize contentUrl;
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    //        urlStr = [NSString stringWithFormat:@"%@%@",BASC_HOST2,@"sunsoft-zyapp/retail/retail.shtml"];
    urlStr = @"https://www.baidu.com";
    
    shopWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height-200-64)];
    shopWebView.scrollView.showsHorizontalScrollIndicator = NO;
    shopWebView.scrollView.showsVerticalScrollIndicator = NO;
    shopWebView.backgroundColor = [UIColor clearColor];
    shopWebView.delegate = self;
    
    [self.view addSubview:shopWebView];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    [shopWebView loadRequest:request];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark---------代理方法----------
//网页开始加载的时候调用
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    //    mbProgress =  [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}

//网页加载完成的时候调用
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    
}

//网页加载错误的时候调用
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    //    [ZSKJCommonObject showHUD:@"似乎互联网已断开连接" addView:self.view];
    //    [mbProgress removeFromSuperview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
