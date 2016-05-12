//
//  AppDelegate.m
//  MicroBlog
//
//  Created by mac on 5/10/16.
//  Copyright © 2016 weifengdq. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeTLViewController.h"
#import "MessageViewController.h"
#import "DisCoverViewController.h"
#import "AccessViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //容器controller
    UITabBarController *tabBarCtr = [[UITabBarController alloc]init];

    
    AccessViewController *accessVC = [[AccessViewController alloc] init];
    accessVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Me" image:[UIImage imageNamed:@"tabbar_profile@2x"]selectedImage:[UIImage imageNamed:@"tabbar_profile_highlighted@2x"]];
    
    HomeTLViewController *homeTLVC = [[HomeTLViewController alloc] init];
    homeTLVC.access_token = @"2.00hPlFUDfTHEQE7eeade19f72b3CbB";
    NSLog(@"homeTLVC.access_token = %@", homeTLVC.access_token);
    
    homeTLVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Home" image:[UIImage imageNamed:@"tabbar_home@2x"]selectedImage:[UIImage imageNamed:@"tabbar_home_selected@2x"]];
    
    
    MessageViewController *messageVC = [[MessageViewController alloc] init];
    messageVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Message" image:[UIImage imageNamed:@"tabbar_message_center@2x"]selectedImage:[UIImage imageNamed:@"tabbar_message_center_selected@2x"]];
    
    MessageViewController *empty = [[MessageViewController alloc]init];
    empty.tabBarItem = [[UITabBarItem alloc]initWithTitle:nil image:nil selectedImage:nil];
    
    DisCoverViewController *discoverVC = [[DisCoverViewController alloc] init];
    discoverVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Discover" image:[UIImage imageNamed:@"tabbar_discover@2x"]selectedImage:[UIImage imageNamed:@"tabbar_discover_selected@2x"]];
    
    
    tabBarCtr.viewControllers = @[homeTLVC, messageVC, empty, discoverVC, accessVC];
    
    tabBarCtr.delegate = self;
    
    tabBarCtr.selectedIndex = 4;
    
    //底层图片
//    UIImage *image = [UIImage imageNamed:@"tabbar_compose_button@2x"];
    //上层图片
    UIImage *image = [UIImage imageNamed:@"tabbar_compose_icon_add_highlighted@2x"];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    
    //设置图片
    btn.imageView.image = image;
    [btn setImage:image forState:UIControlStateNormal];
    //[btn setImage:imageH forState:UIControlStateHighlighted];
    
    //判断图片的高度,是否超过tabBar的高度
    
    //frame 0,0,100,100
    //CGRectGetMinX(tabBarCtr.tabBar.frame);
    //CGRectGetMaxX(tabBarCtr.tabBar.frame);
    
    //    if (image.size.height>CGRectGetHeight(tabBarCtr.tabBar.frame))
    //    {
    //        CGFloat dff = image.size.height-CGRectGetHeight(tabBarCtr.tabBar.frame);
    //
    //        btn.center = CGPointMake(tabBarCtr.tabBar.center.x, tabBarCtr.tabBar.center.y-dff/2);
    //    }
//    btn.center = tabBarCtr.tabBar.center;
    UIImage *imageB = [UIImage imageNamed:@"tabbar_compose_button@2x"];
    
    UIImageView *ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imageB.size.width, imageB.size.height)];
    ImgView.image = imageB;

    ImgView.center = tabBarCtr.tabBar.center;
    
    btn.center = ImgView.center;       //tabBarCtr.tabBar.center;
    
    [tabBarCtr.view addSubview:ImgView];
    
    [tabBarCtr.view addSubview:btn];
    
    self.window.rootViewController = tabBarCtr;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
