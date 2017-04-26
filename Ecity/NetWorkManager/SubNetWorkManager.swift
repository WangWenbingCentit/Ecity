//
//  SubNetWorkManager.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/26.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class SubNetWorkManager: BaseNetWorkManager {
    
    class func sharedInstanceSession() -> SubNetWorkManager
        
    {
        var sharedInstance: SubNetWorkManager? = nil
        
        if sharedInstance == nil {
            var sessionConfig = URLSessionConfiguration.default 
            
        }
       
        
        return sharedInstance!
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
