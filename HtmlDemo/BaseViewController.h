//
//  BaseViewController.h
//  regularcamera
//
//  Created by jfdream on 15/12/4.
//  Copyright © 2015年 2015 Wise Sight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

-(void)setRightTitle:(NSString *)title withMethod:(SEL)method;
-(void)setRightImage:(NSString *)imageName withMethod:(SEL)method;

-(void)setLeftTitle:(NSString *)title withMethod:(SEL)method;
-(void)setLeftImage:(NSString *)imageName withMethod:(SEL)method;

-(void)setNavigationBarImage:(NSString *)barImageName;
-(void)setNavigationBarTitleColor:(UIColor *)titleColor;

@end
