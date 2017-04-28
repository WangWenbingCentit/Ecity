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
    
    public var firstRun : Bool! {
   
    // set --> get
    set {
        self.firstRun = newValue
        UserDefaults.standard.set(newValue, forKey: kEcityCompletedFirstRun)
    }
    get {
        return UserDefaults.standard.bool(forKey: kEcityCompletedFirstRun)
    }
    
        // set  get
//        willSet {
//           
            //UserDefaults.standard.set(newValue, forKey: kEcityCompletedFirstRun)
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

    public func finish(_ parent : UIViewController) -> Void {
        
        parent.dismiss(animated: true) {
           
            if self.firstRun == true
            {
                let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                delegate.presentInterface()
            }
           
            self.firstRun = false
        }
        
    }
}
