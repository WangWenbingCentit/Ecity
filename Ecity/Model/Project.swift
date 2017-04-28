//
//  Project.swift
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

import UIKit

class Project : MTLModel,MTLJSONSerializing {

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
    

    static func jsonKeyPathsByPropertyKey() -> [AnyHashable : Any]! {
        
        return ["projectName" : "projectName",
                "startTime"   : "startTime",
                "isSupervisedName" : "isSupervisedName",
                "issueNameAll" : "issueNameAll",
                "isDelayName"  : "isDelayName",
                "isDelay"      : "isDelay",
                "projectTypeName" : "projectTypeName",
                "myAllTasks"      : "myAllTasks",
                "myTasks"         : "myTasks",
                "projectId"       : "projectId",
                "projectType"     : "projectType",
                "planEndTime"     : "planEndTime",
                "planStartTime"   : "planStartTime",
                "deleyDays"       : "deleyDays",
                "projectPhase"    : "projectPhase",
                "projectState"    : "projectState",
                "keyWordsName"    : "keyWordsName",
                "isSupervised"    : "isSupervised",
                "longitudePos"    : "longitudePos",
                "latitudePos"     : "latitudePos"]
    }

}
