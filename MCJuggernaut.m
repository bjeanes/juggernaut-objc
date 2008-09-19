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

- (void)connected:(bool)success
{
	if(success)
	{
		if ([target respondsToSelector:@selector(juggernautConnected)])
			[target juggernautConnected];
		return;
	}
	
	if ([target respondsToSelector:@selector(juggernautErrorConnecting)])
		[target juggernautErrorConnecting];	
}

- (void)disconnected
{
	if ([target respondsToSelector:@selector(juggernautDisconnected)])
		[target juggernautDisconnected];
}

-(void)receiveMessage:(NSString *)message
{
	[target juggernautReceiveMessage:message];
}
	
- (void)dealloc
{
	[target release];
	[host release];
	[super dealloc];
}
@end