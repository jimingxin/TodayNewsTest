//
//  YMVideoUserControllerViewController.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/14.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMVideoUserController: UIViewController {

    var mediaInfo: YMMediaInfo?
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.navigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private lazy var headerView: YMuser

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
