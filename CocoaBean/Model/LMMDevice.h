//
//  LMMDevice.h
//  DisasterPreparedness
//
//  Created by Janakiraman on 18/09/13.
//  Copyright (c) 2013 Mobiquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LMMUser;

@interface LMMDevice : NSObject

@property (nonatomic, strong) NSString *guid;
@property (nonatomic, strong) NSString *notificationToken;

@end
