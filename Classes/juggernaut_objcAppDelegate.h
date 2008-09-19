//
//  juggernaut_objcAppDelegate.h
//  juggernaut-objc
//
//  Created by Bodaniel Jeanes on 19/09/08.
//  Copyright Mocra 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class juggernaut_objcViewController;

@interface juggernaut_objcAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet juggernaut_objcViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) juggernaut_objcViewController *viewController;

@end

