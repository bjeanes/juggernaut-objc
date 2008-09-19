//
//  MCJuggernaut.h
//  juggernaut-objc
//
//  Created by Bodaniel Jeanes on 19/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCJuggernaut : NSObject {
	id target;
	NSString *host;
	NSInteger port;
}
+(id)juggernautWithHost:(NSString *)host port:(NSInteger)port target:(id)target;

-(void)connect;

@property NSInteger port;
@property (nonatomic, retain) NSString *host;
@property (nonatomic, retain) id target;

@end
