//
//  FirstRunManager.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit
import Foundation
/*
 final class FirstRunManager: NSObject {
 static let sharedInstance = FirstRunManager()
 private override init() {
 }
 
 }
 */
private let firstRunManager = FirstRunManager()
// final 不希望这个类被继承或者重写
final class FirstRunManager: NSObject {
    var firstRun : Bool! {
        willSet {
            
        }
        
        didSet {

        }
    }
    
    static var sharedInstance : FirstRunManager
    {
        return firstRunManager
    }
    fileprivate override init() {
    }

    
}
