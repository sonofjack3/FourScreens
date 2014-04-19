//
//  AppDelegate.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  Delegate class for the Four Screens App

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //Create a view controller for each screen
    ScreenOneController *screen1 = [[ScreenOneController alloc] init];
    ScreenTwoController *screen2 = [[ScreenTwoController alloc] init];
    ScreenThreeController *screen3 = [[ScreenThreeController alloc] init];
    ScreenFourController *screen4 = [[ScreenFourController alloc] init];
    
    //Screen 3 is a table view and requires a navigation controller
    UINavigationController *screen3Nav = [[UINavigationController alloc] initWithRootViewController:screen3];
    
    //Create a tab bar controller containg tabs for the four screens (the third is represented by its navigation controller)
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    NSArray *viewControllers = [NSArray arrayWithObjects:screen1, screen2, screen3Nav, screen4, nil];
    [tabBarController setViewControllers:viewControllers];
    
    for (int i = 1; i < 5; i++) //add titles for each tab
        [[viewControllers objectAtIndex:(i-1)] setTitle:[NSString stringWithFormat:@"Screen %d", i]];
    
    [[self window] setRootViewController:tabBarController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
