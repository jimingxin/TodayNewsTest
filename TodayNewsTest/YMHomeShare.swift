//
//  YMHomeShare.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMHomeShare: NSObject {
    var icon: NSString?
    
    var icon_night: NSString?
    
    var title: String?
    
    init(dict:[String: AnyObject]){
        super.init()
        icon = dict["icon"] as? String
        icon_night = dict["icon_night"] as? String
        title = dict["title"] as? String
    }
    
}
