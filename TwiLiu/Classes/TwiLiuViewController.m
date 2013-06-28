//
//  TwiLiuViewController.m
//  TwiLiu
//
//  Created by Justin Liu on 6/27/13.
//  Copyright (c) 2013 Justin Liu. All rights reserved.
//

#import "TwiLiuViewController.h"

@interface TwiLiuViewController ()

@end

@implementation TwiLiuViewController

#pragma mark - Initialization
- (UIButton *)sendButton
{
    // Override to use a custom send button
    // The button's frame is set automatically for you
    return [UIButton defaultSendButton];
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.delegate = self;
    self.dataSource = self;
    
    self.title = @"1 Minute";
    
    self.messages = [[NSMutableArray alloc] initWithObjects:
                     @"Hi, this is a fake conversation",
                     @"Use this app to receive a real phone call and exit awkward situations \U0001f604 \U0001f4de",
                     @"U mean like long meetings \U0001f4a4 or bad dates \U0001f47d?!",
                     @"Yes!  You can click on the title bar to change the delay before you are called",
                     @"Type your 10-digit US phone number below",
                     nil];
    
    self.timestamps = [[NSMutableArray alloc] initWithObjects:
                       [NSDate distantPast],
                       [NSDate distantPast],
                       [NSDate distantPast],
                       [NSDate date],
                       [NSDate date],
                       nil];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Call Now" style:UIBarButtonItemStyleBordered target:nil action:nil];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"About" style:UIBarButtonItemStyleBordered target:nil action:nil];
}

- (void)verifyPhoneNumber:(NSString *)phoneNumber
{
    NSString *phoneRegex = @"[0-9]{10}";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    BOOL matches = [test evaluateWithObject:phoneNumber];
    
    NSString *response = [NSString stringWithFormat:@"Phone number %@ is %@",
                          phoneNumber, matches ? @"valid.  Call you soon." : @"not valid"];
    [self.messages addObject:response];
    [self.timestamps addObject:[NSDate date]];
    
    [self.tableView reloadData];
    [self scrollToBottomAnimated:YES];
    
    // Trigger phone call
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messages.count;
}

#pragma mark - Messages view delegate
- (void)sendPressed:(UIButton *)sender withText:(NSString *)text
{
    [self.messages addObject:text];
    
    [self.timestamps addObject:[NSDate date]];
    
    if((self.messages.count - 1) % 2)
        [JSMessageSoundEffect playMessageSentSound];
    else
        [JSMessageSoundEffect playMessageReceivedSound];
    
    [self finishSend];
    [self verifyPhoneNumber:text];
}

- (JSBubbleMessageStyle)messageStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return (indexPath.row % 2) ? JSBubbleMessageStyleOutgoingDefault : JSBubbleMessageStyleIncomingDefault;
}

- (JSMessagesViewTimestampPolicy)timestampPolicyForMessagesView
{
    return JSMessagesViewTimestampPolicyEveryThree;
}

- (BOOL)hasTimestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self shouldHaveTimestampForRowAtIndexPath:indexPath];
}

#pragma mark - Messages view data source
- (NSString *)textForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.messages objectAtIndex:indexPath.row];
}

- (NSDate *)timestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.timestamps objectAtIndex:indexPath.row];
}

@end
