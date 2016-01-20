//
//  MainViewController.m
//  HtmlDemo
//
//  Created by 123 on 16/1/20.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "MainViewController.h"

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

typedef enum : NSUInteger {
    UserSpring=1,
    UserSummer,
    UserFalling,
    UserWinner,
} UserType;
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginButton:(id)sender
{
    int aaa = arc4random()%4+1;
    [self login:aaa];
    NSLog(@"----->%d",aaa);
}

// vc.title == vc.navitationItem.title...谁在下谁决定最后的展示navigationItem.title
// vc.title == nv1.tabBarItem.title......谁在下谁决定最后的展示tabBarItem.title
// 控制器上面的navigationItem.title只能有vc来控制

- (void)login:(NSInteger)type
{
    //a.初始化一个tabBar控制器
    UITabBarController *tabBarViewController=[[UITabBarController alloc]init];

    switch (type) {
        case UserSpring:
        {
            OneViewController * VC1 = [[OneViewController alloc] init];
//            VC1.title = @"VC1";
            VC1.tabBarItem.title = @"tabVC1";
            TwoViewController * VC2 = [[TwoViewController alloc] init];
//            VC2.title = @"VC2";
            VC2.tabBarItem.title = @"tabVC2";
            
            ThirdViewController * VC3 = [[ThirdViewController alloc] init];
            VC3.title = @"VC3";
            VC3.tabBarItem.title = @"tabtab3";
            
            VC1.navigationItem.title = @"nanana1";
            VC2.navigationItem.title = @"nanana2";
            VC3.navigationItem.title = @"nanana3";

            UINavigationController *nv1 = [[UINavigationController alloc]initWithRootViewController:VC1];
            nv1.title = @"navVC1";
//            nv1.tabBarItem.title= @"Spring1111";
            UINavigationController *nv2 = [[UINavigationController alloc]initWithRootViewController:VC2];
            nv2.title = @"navVC2";
//            nv2.tabBarItem.title= @"Spring2222";
            UINavigationController *nv3 = [[UINavigationController alloc]initWithRootViewController:VC3];
//            nv3.title = @"navVC3";
//            nv3.tabBarItem.title= @"Spring3333";
            
            [tabBarViewController setViewControllers:@[nv1,nv2,nv3]];

        }
            break;
        case UserSummer:
        {
            OneViewController * VC1 = [[OneViewController alloc] init];
            VC1.title = @"VC1";
            VC1.navigationItem.title = @"nanana1";
            VC1.tabBarItem.title = @"tabtab1";// 无效
            ThirdViewController * VC2 = [[ThirdViewController alloc] init];

            VC2.tabBarItem.title = @"tabtab2";

            VC2.navigationItem.title = @"nanana2";
            VC2.title = @"VC2";

            UINavigationController *nv1 = [[UINavigationController alloc]initWithRootViewController:VC1];
            nv1.tabBarItem.title= @"Summer1111";
            UINavigationController *nv2 = [[UINavigationController alloc]initWithRootViewController:VC2];
            nv2.tabBarItem.title= @"Summer2222";
            
            [tabBarViewController setViewControllers:@[nv1,nv2]];
        }
            break;
        case UserFalling:
        {
            ThirdViewController * VC1 = [[ThirdViewController alloc] init];
            FourViewController * VC2 = [[FourViewController alloc] init];
            VC2.title = @"VC2";
            VC2.tabBarItem.title = @"tabtab2";

            VC1.navigationItem.title = @"nanana1";
            VC2.navigationItem.title = @"nanana2";
            VC1.title = @"VC1";

            UINavigationController *nv1 = [[UINavigationController alloc]initWithRootViewController:VC1];
            nv1.tabBarItem.title= @"Falling1111";
            UINavigationController *nv2 = [[UINavigationController alloc]initWithRootViewController:VC2];
            nv2.tabBarItem.title= @"Falling2222";
            [tabBarViewController setViewControllers:@[nv1,nv2]];

        }
            break;
        case UserWinner:
        {
            FourViewController * VC1 = [[FourViewController alloc] init];
            OneViewController * VC2 = [[OneViewController alloc] init];
//            VC1.navigationItem.title = @"nanana1";
            
            
            VC2.tabBarItem.title = @"tabtab2";

            UINavigationController *nv1 = [[UINavigationController alloc]initWithRootViewController:VC1];
            nv1.tabBarItem.title= @"Winner1111";
            UINavigationController *nv2 = [[UINavigationController alloc]initWithRootViewController:VC2];
//            nv2.tabBarItem.title= @"Winner2222";
            VC1.title = @"VC1";
            VC2.title = @"VC2";
            [tabBarViewController setViewControllers:@[nv1,nv2]];

        }
            break;
        default:
            break;
    }
    //设置控制器为Window的根控制器
    [UIApplication sharedApplication].delegate.window.rootViewController=tabBarViewController;
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
