//
//  NSDate+Extension.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/28.
//  Copyright © 2017年 Centit. All rights reserved.
//

import Foundation

extension NSDate
{
    static func getCurrentTime() -> String
    {
        return "\(NSDate().timeIntervalSince1970)"
    }
}
