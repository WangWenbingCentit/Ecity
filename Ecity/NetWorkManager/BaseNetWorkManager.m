//
//  BaseNetWorkManager.m
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import "BaseNetWorkManager.h"

@implementation BaseNetWorkManager

+ (AFNetworkReachabilityManager *)reachabilityManager
    {
        static AFNetworkReachabilityManager *sharedReachability = nil;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            sharedReachability = [AFNetworkReachabilityManager managerForDomain:@"www.centit.com"];
            [sharedReachability startMonitoring];
        });
        return sharedReachability;
    }
    
+ (NSDictionary *)responseClassesByResourcePath {
    return @{@"**": [OVCResponse class]};
}
    
- (instancetype)initWithBaseURL:(NSURL *)url sessionConfiguration:(NSURLSessionConfiguration *)configuration
    
{
    if (!url) {
        // For now we are only going to be using the staging server
        url = [NSURL URLWithString:ServerAndPort];
        
    }
    
    // Super is Overcoat class
    self = [super initWithBaseURL:url sessionConfiguration:configuration];
    
    if (self) {
        
        // All requests are JSON too
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        [self.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        // Caching requests is turned of to allow for easy changes on the website endpoints and it can be turned on once the endpoints are stable
        self.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
        
        // All responses are JSON
        NSArray *contentTypes = @[@"application/json", @"text/plain",@"text/html",@"multipart/form-data"];
        self.responseSerializer.acceptableContentTypes = [NSSet setWithArray:contentTypes];
        
        [self setReachabilityManager:[self reachabilityManager]];
        
    }
    return self;
}
@end
