//
//  BaseNetWorkManager.h
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import <Overcoat/Overcoat.h>

@interface BaseNetWorkManager : OVCHTTPSessionManager

+ (AFNetworkReachabilityManager *)reachabilityManager;
    
@end
