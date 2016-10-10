//
//  YMNavigationController.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMNavigationController: UINavigationController {

    override class func initialize(){
    
        super.initialize()
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.whiteColor()
        navBar.tintColor = YMColor(0, g: 0, b: 0, a: 0.7)
        navBar.titleTextAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(17)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "lefterbackicon_titlebar_28x28_"), style: .Plain, target: self, action: #selector(navigationBack))
            
        }
        
        super.pushViewController(viewController, animated: true)
        
    }
    
    func navigationBack() {
        popViewControllerAnimated(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
