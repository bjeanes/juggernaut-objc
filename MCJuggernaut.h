//
//  MCJuggernaut.h
//  juggernaut-objc
//
//  Created by Bodaniel Jeanes on 19/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MCJuggernautDelegate<NSObject>
- (void)juggernautReceiveMessage:(NSString *)message;
@optional
- (void)juggernautDisconnected;
- (void)juggernautConnected;
- (void)juggernautErrorConnecting;
- (void)juggernautInitialized;
@end

@interface MCJuggernaut : NSObject {
	id <MCJuggernautDelegate> target;
	NSString *host;
	NSInteger port;
}
+(id)juggernautWithHost:(NSString *)host port:(NSInteger)port target:(id)target;

-(void)connect;
-(void)connected:(bool)success;
-(void)disconnected;
-(void)receiveMessage:(NSString *)message;

@property NSInteger port;
@property (nonatomic, retain) NSString *host;
@property (nonatomic, retain) id target;

@end
