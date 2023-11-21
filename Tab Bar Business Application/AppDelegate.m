//
//  AppDelegate.m
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 05/11/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    Customize the navigation bar color
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:27.0/255.0 green:65.0/255.0 blue:113.0/255.0 alpha:1.0]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:27.0/255.0 green:65.0/255.0 blue:113.0/255.0 alpha:1.0]}];
    
//    Customize the tab bar color
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:27.0/255.0 green:65.0/255.0 blue:113.0/255.0 alpha:1.0]];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
