//
//  Project.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class Project : NSObject {

    var projectName : String?
    var startTime : String?
    var isSupervisedName : String?
    var issueNameAll : String?
    var isDelayName : String?
    var isDelay : String?
    var projectTypeName : String?
    var myAllTasks : String?
    var myTasks : String?
    var projectId : String?
    var projectType : String?
    var planEndTime : String?
    var planStartTime : String?
    var deleyDays : String?
    var projectPhase : String?
    var projectState : String?
    var keyWordsName : String?
    var isSupervised : String?
    var longitudePos : NSNumber?
    var latitudePos : NSNumber?
    

    init (dict : [String : Any]){
        super.init()
        setValuesForKeys(dict);
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }

}
