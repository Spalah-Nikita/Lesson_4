//
//  ViewController.m
//  MVC
//
//  Created by Nikita Vintonovich on 8/22/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ViewController.h"

#import "MyFriend.h"
#import "MyBestFriend.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Actoions

- (IBAction)myFrienActionButton:(UIButton *)sender
{
    MyFriend *myFriend = [MyFriend new];
    
    NSString *trollText = [myFriend textForTrolling];
    self.textLabel.text = trollText;
}

- (IBAction)myBestFriendActionButton:(UIButton *)sender
{
    MyBestFriend *myBestFriend = [MyBestFriend new];
    
    NSString *trollText = [myBestFriend textForTrolling];
    self.textLabel.text = trollText;
}

@end
