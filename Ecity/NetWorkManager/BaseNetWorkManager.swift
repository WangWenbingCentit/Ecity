//
//  BaseNetWorkManager.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/26.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit
/*
 rivate let firstRunManager = FirstRunManager()
 // final 不希望这个类被继承或者重写
 final class FirstRunManager: NSObject {
 
 public var firstRun : Bool! {
 
 // set --> get
 set(isFirstRun){
 UserDefaults.standard.set(isFirstRun, forKey: kEcityCompletedFirstRun)
 }
 get {
 return UserDefaults.standard.bool(forKey: kEcityCompletedFirstRun)
 }
 
 // set  get
 //        willSet {
 //
 //UserDefaults.standard.set(firstRun, forKey: kEcityCompletedFirstRun)
 //        }
 //
 //        didSet {
 //
 //           UserDefaults.standard.bool(forKey: kEcityCompletedFirstRun)
 //        }
 }
 // 静态 变量，在内存中只生成一次
 static var sharedInstance : FirstRunManager
 {
 return firstRunManager
 }
 
 fileprivate override init() {
 }

 */

/*
 final class FirstRunManager: NSObject {
 static let sharedInstance = FirstRunManager()
 private override init() {
 }
 
 }
 */
class BaseNetWorkManager: OVCHTTPSessionManager<OVCResponse<AnyObject>> {
    // 单例模式
    // 类方法使用class +
    class func  reachabilityManager() -> AFNetworkReachabilityManager {
       
        var sharedInstance: AFNetworkReachabilityManager? = nil
        if sharedInstance == nil {
             sharedInstance = AFNetworkReachabilityManager.init(forDomain: "www.centit.com")
             sharedInstance!.startMonitoring()
        }
        
        return sharedInstance!
        
    }
    
    override class func modelClassesByResourcePath() -> [String : Any]
    {
        return [:]
    }
    
    override class func responseClassesByResourcePath() -> [String : Any]
    {
        return [:]
    }

    public override init(baseURL url: URL?, sessionConfiguration configuration: URLSessionConfiguration?)
    {
        super.init(baseURL: url, sessionConfiguration: configuration)
        self.requestSerializer = AFJSONRequestSerializer.init()
        self.requestSerializer .setValue("application/json", forHTTPHeaderField: "Content-Type")
        self.requestSerializer.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        let contentTypes  = ["application/json","text/plain","text/html","multipart/form-data"]
        self.responseSerializer.acceptableContentTypes = (NSSet.init(array: contentTypes) as! Set<String>)
        self.securityPolicy = AFSecurityPolicy(pinningMode: .none)
        self.securityPolicy.allowInvalidCertificates = true
        self.reachabilityManager = BaseNetWorkManager.reachabilityManager()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
    }
    
}
