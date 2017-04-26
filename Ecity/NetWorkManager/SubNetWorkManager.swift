//
//  SubNetWorkManager.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/26.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class SubNetWorkManager: BaseNetWorkManager {
    
   final class func sharedInstanceSession() -> SubNetWorkManager
        
    {
        var sharedInstance: SubNetWorkManager? = nil
        
        if sharedInstance == nil {
            let sessionConfig = URLSessionConfiguration.default 
            sharedInstance = (BaseNetWorkManager.init(baseURL: nil, sessionConfiguration: sessionConfig) as! SubNetWorkManager)
            sharedInstance?.reachabilityManager = SubNetWorkManager.reachabilityManager()
        }
      
        
        return sharedInstance!
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
