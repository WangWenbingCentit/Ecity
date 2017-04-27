//
//  NSUserDefaults+EcityDefaults.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/27.
//  Copyright © 2017年 Centit. All rights reserved.
//

import Foundation

let kEcityCompletedFirstRun = "kEcityCompletedFirstRun"

extension UserDefaults
{
    public func ecity_registerUserDefaults() -> Void {
        let defaultsInfo = [kEcityCompletedFirstRun:(true)]
        self.register(defaults: defaultsInfo)
        
    }
}
