//
//  NSUserDefaults+EcityDefaults.h
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *kEcityCompletedFirstRun;

@interface NSUserDefaults (EcityDefaults)

- (void)ecity_regeisterDefaults;
    
@end
