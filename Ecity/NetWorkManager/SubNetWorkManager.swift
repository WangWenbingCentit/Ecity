//
//  SubNetWorkManager.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/26.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class SubNetWorkManager: BaseNetWorkManager, Ecity_Protocol {
    
    final class FirstRunManager: NSObject {
        static let sharedInstance = FirstRunManager()
        private override init() {
        }
        
    }
   
    
    final class func sharedInstanceSession() -> SubNetWorkManager
        
    {
        
        var sharedInstance: SubNetWorkManager? = nil
        
        if sharedInstance == nil {
            let sessionConfig = URLSessionConfiguration.default 
            sharedInstance = BaseNetWorkManager.init(baseURL: nil, sessionConfiguration: sessionConfig) as? SubNetWorkManager
            sharedInstance!.reachabilityManager = SubNetWorkManager.reachabilityManager()
        }
      
        
        return sharedInstance!
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func projectList() -> AnyPromise {
        
    
        
        var urlString: String = ""
        
        urlString = String.init(format: "%@/%@", arguments: [ServerAndPort,ProjectPath])
        urlString = String.init(describing: NSCharacterSet.urlQueryAllowed)
        
        let anyPromise = self.pmk_GET(urlString, parameters: nil).then { (response) -> AnyPromise in
            
            let promise = AnyPromise.promiseWithValue(response)
            
            return promise
            
        }.catch { (error) in
            
        }
        
        return AnyPromise(anyPromise)
    }
    
}
