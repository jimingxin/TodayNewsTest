//
//  YMVideoTopicControllerViewController.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/14.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit
import SnapKit
import AVFoundation

let videoTopicCellID = "YMVideoTopicCell"

class YMVideoTopicViewController: UITableViewController {

    var lastSelectCell: YMVideoTopicCell?
    
    var playView: YMPlayerView?
    
    // 下拉刷新的时间
    private var pullRefreshTime: NSTimeInterval?
    // 记录点击的顶部标题
    var videoTitle: YMVideoTopTitle?
    // 存放新闻主题的数组
    private var newsTopics = [YMNewsTopic]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI(){
    
        tableView.contentInset = UIEdgeInsetsMake(64, 0, 49, 0)
   
        let nib = UINib(nibName: String(YMVideoTopicCell), bundle: nil)
        tableView.registerNib(nil, forCellReuseIdentifier: videoTopicCellID)
        tableView.rowHeight = 270
        tableView.separatorStyle = .None
        
    }

    //添加上拉刷新和下拉刷新
    private func setupRefresh() {
    
        pullRefreshTime = NSDate().timeIntervalSince1970
        
        //获取首页不同分类的新闻内容
        YMNetworkTool.shareNetworkTool.loadHomeCategoryNewsFeed(videoTitle?.category, tableView: tableView) { [weak self](nowTime, newsTopics) in
            
            self?.pullRefreshTime = nowTime
            self?.newsTopics = newsTopics
            self?.tableView.reloadData()
        }
        
        //获取更多新闻内容
        YMNetworkTool.shareNetworkTool.loadHomeCategoryMoreNewsFeed(videoTitle?.category, lastRefreshTime: pullRefreshTime, tableView: tableView) { [weak self](moreTopics) in
            self?.newsTopics += moreTopics
            self?.tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension YMVideoTopicViewController: YMVideoTopicCellDelegate {


    // MARK : YMVideoTopicCellDelegate
    //昵称按钮点击
    func videoTopicCell(videoTopicCell: YMVideoTopicCell, nameButtonClick nameButton: UIButton) -> Void {
        //let userVC =
        
    }
}

