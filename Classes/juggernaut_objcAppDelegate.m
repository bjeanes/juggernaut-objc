//
//  juggernaut_objcAppDelegate.m
//  juggernaut-objc
//
//  Created by Bodaniel Jeanes on 19/09/08.
//  Copyright Mocra 2008. All rights reserved.
//

#import "juggernaut_objcAppDelegate.h"
#import "juggernaut_objcViewController.h"

@implementation juggernaut_objcAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {	
	
	// Override point for customization after app launch	
    [window addSubview:viewController.view];
	[window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
	[window release];
	[super dealloc];
}


@end
