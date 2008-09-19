//
//  MCJuggernaut.m
//  juggernaut-objc
//
//  Created by Bodaniel Jeanes on 19/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import "MCJuggernaut.h"

@implementation MCJuggernaut

@synthesize target, host, port;

+(id)juggernautWithHost:(NSString *)host port:(NSInteger)port target:(id)target
{
	MCJuggernaut *mcj = [[[self alloc] init] autorelease];
	
	if(mcj)
	{
		mcj.host = host;
		mcj.port = port;
		mcj.target = target;
		
		return mcj;
	}
	else return nil;
}

-(void)connect
{

}

- (void)onConnect:(bool)success
{
	if(success)
	{
		[target performSelector:@selector(isConnected)];
		return;
	}
	
	[target performSelector:@selector(connectFailed)];	
}

- (void)onClose
{
	[target performSelector:@selector(disconnected)];
}
	
- (void)dealloc
{
	[target release];
	[host release];
	[super dealloc];
}
@end