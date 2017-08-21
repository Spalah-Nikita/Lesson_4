//
//  MyFriend.h
//  MVC
//
//  Created by Nikita Vintonovich on 8/22/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyFriend : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

- (NSString *)textForTrolling;

@end
