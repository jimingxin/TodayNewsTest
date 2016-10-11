//
//  YMFirstIntroduceController.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMFirstIntroduceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func mobileButtonClick(sender: UIButton) {
        
    }
    
    @IBAction func wechatButtonClick(sender: UIButton) {
        
    }
    
    @IBAction func QQButtonClick(sender: UIButton) {
        
    }
    
    @IBAction func weiboButtonClick(sender: UIButton) {
        
    }
    
    @IBAction func enterButtonClick(sender: UIButton) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = YMTabBarController()
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
