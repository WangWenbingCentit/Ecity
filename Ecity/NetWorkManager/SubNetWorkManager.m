//
//  SubNetWorkManager.m
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import "SubNetWorkManager.h"

@interface SubNetWorkManager ()

@end

#define projectPath   @"service/project/projectsearch/listprojectinfo"

@implementation SubNetWorkManager
    
+ (instancetype)sharedInstanceSession
{
    static SubNetWorkManager *subNetWorkManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *defaultsConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        subNetWorkManager = [[self alloc] initWithBaseURL:nil sessionConfiguration:defaultsConfiguration];
        [self reachabilityManager];
    });
    return subNetWorkManager;
}
    
- (AnyPromise *)projectList
{
    NSString  *urlString = nil;
    [self.requestSerializer setTimeoutInterval:10];
    
    urlString = [ServerAndPort stringByAppendingString:projectPath];
   
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    AnyPromise *promise = [self pmk_GET:urlString parameters:@{}].then(^(OVCResponse *response){
        
        return response;
        
    }).catch(^(NSError *error) {
        
        return error;
        
    });
    
    return promise;
}
@end
