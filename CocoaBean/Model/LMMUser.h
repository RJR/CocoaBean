//
//  LMMUser.h
//  DisasterPreparedness
//
//  Created by Janakiraman on 18/09/13.
//  Copyright (c) 2013 Mobiquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LMMUser : NSObject

@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong, getter = isLMUser) NSNumber *lmStatus;

@end
