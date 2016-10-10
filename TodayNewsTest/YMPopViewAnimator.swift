//
//  YMPopViewAnimator.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMPopViewAnimator: NSObject,UIViewControllerTransitioningDelegate,UIViewControllerAnimatedTransitioning {
    
    //定义弹出视图的大小
    var presentFrame = CGRectZero
    //记录当前是否展开视图
    var isPresent: Bool = false
    
    // MARK:- UIViewControllerTransitioningDelegate
    /**
     告诉系统由哪个控制器来实现代理
     - parameter presented:  被展现的视图
     - parameter presenting: 展现的视图
     - returns: YMPopPresentationController iOS 8 以后推出的专门负责转场动画的控制器
     */
    func presentationControllerForRresentedViewController(presented:UIViewController,presentingViewController presenting:UIViewController,sourceViewController source:UIViewController) -> UIPresentationController {
        
        
        
    }

    
}
