//
//  HW01HelloAppDelegate.m
//  HW01Hello
//
//  Created by Adriaan Scholvinck on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HW01HelloAppDelegate.h"
#import "View.h"

@implementation HelloAppDelegate
@synthesize window=_window;

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
    
    UIScreen *s = [UIScreen mainScreen];
    CGRect b = s.bounds;
    CGRect f = s.applicationFrame;
    
    NSLog(@"application:didFinishLaunchingWithOptions: b.origin == (%g, %g), b.size == %g × %g",
          b.origin.x,
          b.origin.y,
          b.size.width,
          b.size.height);
    
//    view = [[View alloc] initWithFrame: f];
    view = [[View alloc]
            initWithFrame: f
            string: @"HELLO ADRIAAN!"
            backgroundColor: [UIColor whiteColor]
            point: CGPointMake(0.0, 0.0)
            font:  [UIFont systemFontOfSize: 32.0]];
    
    NSLog(@"application:didFinishLaunchingWithOptions: view.retainCount == %u", view.retainCount);
    _window = [[UIWindow alloc] initWithFrame: b];
    NSLog(@"application:didFinishLaunchingWithOptions: view.retainCount == %u", view.retainCount);
    
    [_window addSubview: view];
    NSLog(@"application:didFinishLaunchingWithOptions: view.retainCount == %u", view.retainCount);
    [_window makeKeyAndVisible];
    return YES;
}

- (void) applicationWillResignActive: (UIApplication *) application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    NSLog(@"applicationWillResignActive");
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
    NSLog(@"applicationDidEnterBackground");
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
    NSLog(@"applicationWillEnterForeground");
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void) applicationWillTerminate: (UIApplication *) application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
    NSLog(@"applicationWillTerminate");
}

- (void) dealloc
{
    [_window release];
    [view release];
    [super dealloc];
}

@end
