//
//  YMPopPresentationController.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMPopPresentationController: UIPresentationController {

    //定义弹出视图的大小
    var presentFrame = CGRectZero
    
    override init(presentedViewController: UIViewController, presentingViewController: UIViewController) {
        super.init(presentedViewController: presentedViewController, presentingViewController: presentingViewController)
    }
    
    override func containerViewWillLayoutSubviews() {
        containerView?.insertSubview(coverView, atIndex: 0)
        //修改弹出视图的尺寸
        presentedView()?.frame = presentFrame
    }
    
    private lazy var coverView: UIView = {
    
        let coverView = UIView()
        coverView.backgroundColor = UIColor(white: 0.0, alpha: 0.2)
        coverView.frame = UIScreen.mainScreen().bounds
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissCoverView))
        coverView.addGestureRecognizer(tap)
        return coverView
    }()
    
    func dismissCoverView()  {
        presentedViewController.dismissViewControllerAnimated(true, completion: nil)
    }
}
