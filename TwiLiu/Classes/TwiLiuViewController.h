//
//  TwiLiuViewController.h
//  TwiLiu
//
//  Created by Justin Liu on 6/27/13.
//  Copyright (c) 2013 Justin Liu. All rights reserved.
//

#import "JSMessagesViewController.h"

@interface TwiLiuViewController : JSMessagesViewController <JSMessagesViewDelegate, JSMessagesViewDataSource>

@property (strong, nonatomic) NSMutableArray *messages;
@property (strong, nonatomic) NSMutableArray *timestamps;

@end
