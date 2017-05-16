//
//  AppDelegate.m
//  InjectorTest
//
//  Created by Christoph Halang on 16.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import "AppDelegate.h"
#import "DependentObject.h"
#import "Modules/DevelopmentModule.h"
#import "GenericDependency.h"
#import "Modules/ProductionModule.h"
#import <Objection/Objection.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Choose a module based on the configuration you  want to load...
    JSObjectionInjector *injector = [JSObjection createInjector:[ProductionModule new]];
    //JSObjectionInjector *injector = [JSObjection createInjector:[DevelopmentModule new]];
    [JSObjection setDefaultInjector:injector];
    
    DependentObject* obj = [[DependentObject alloc]init];

    NSLog(@"Object %@ with injected dependency %@ greeting us with \'%@\'",obj, obj.dependency , [obj.dependency greetings]);

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
