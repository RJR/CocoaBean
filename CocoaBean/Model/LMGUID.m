//
//  LMGUID.m
//  DisasterPreparedness
//
//  Created by Rob Goff on 09/15/13.
//  Copyright (c) 2013 Mobiquity, Inc. All rights reserved.
//

#import "LMGUID.h"

@interface LMGUID ()

@property (nonatomic, strong) NSString *lmGUIDString;

@end


@implementation LMGUID

#pragma mark - singleton

static LMGUID *_lmGUID = nil;

+ (LMGUID *)sharedInstance
{
    if (!_lmGUID) {
        // first request after app launch, we need to create ourselves
        _lmGUID = [[LMGUID alloc] init];
    }
    
    return _lmGUID;
}

- (NSString *)guidString
{
    if (!self.lmGUIDString) {
        // in case this is an app relaunch, first look for value in NSUserDefaults
        NSString *guidString = [[NSUserDefaults standardUserDefaults] stringForKey:@"LMGUID"];
        
        // create and store app's GUID string if it has never been done (first app launch)
        if (!guidString) {
            guidString = [[NSUUID UUID] UUIDString];
            [[NSUserDefaults standardUserDefaults] setObject:guidString forKey:@"LMGUID"];
        }
        
        // store the value in class private variable
        self.lmGUIDString = guidString;
    }

    return self.lmGUIDString;
}

@end
