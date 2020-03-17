//
//  AppDelegate.m
//  Main之后时间监测
//
//  Created by Alan on 3/17/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "AppDelegate.h"
#import "BLStopwatch.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[BLStopwatch sharedStopwatch] start];
    int a = 0;
    for (int i = 0; i < 10000000; i++) {
        a++;
    }
    [[BLStopwatch sharedStopwatch] splitWithDescription:@"didFinishLaunchingWithOptions"];
    
    

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
