//
//  YMTipView.swift
//  TodayNewsTest
//
//  Created by 嵇明新 on 2016/10/10.
//  Copyright © 2016年 lanhe. All rights reserved.
//

import UIKit

class YMTipView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = YMColor(215, g: 233, b: 246, a: 1.0)
        addSubview(tipLabel)
        
        tipLabel.snp_makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var tipLabel: UILabel = {
        let tipLabel = UILabel()
        tipLabel.textColor = YMColor(91, g: 162, b: 207, a: 1.0)
        tipLabel.textAlignment = .Center
        tipLabel.transform = CGAffineTransformMakeScale(0.9, 0.9)
        return tipLabel
    }()

}
