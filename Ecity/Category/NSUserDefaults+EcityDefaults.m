//
//  NSUserDefaults+EcityDefaults.m
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import "NSUserDefaults+EcityDefaults.h"

NSString *kEcityCompletedFirstRun = @"kEcityCompletedFirstRun";

@implementation NSUserDefaults (EcityDefaults)
    
- (void)ecity_regeisterDefaults {
    NSDictionary *defaultsInfo = @{ kEcityCompletedFirstRun : @(YES)
                                    
                                    };
    [self registerDefaults:defaultsInfo];
}
@end
