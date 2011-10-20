//
//  HW01HelloAppDelegate.h
//  HW01Hello
//
//  Created by Adriaan Scholvinck on 10/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface HelloAppDelegate: NSObject <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@end
