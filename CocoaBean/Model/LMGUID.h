//
//  LMGUID.h
//  DisasterPreparedness
//
//  Created by Rob Goff on 09/15/13.
//  Copyright (c) 2013 Mobiquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LMGUID : NSObject

+ (LMGUID *)sharedInstance;

- (NSString *)guidString;

@end
