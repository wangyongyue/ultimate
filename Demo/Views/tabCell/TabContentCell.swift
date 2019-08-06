//
//  TabContentCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class TabContentCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is TabContentCellModel{
            let m = aModel as! TabContentCellModel
            if let v = m.view{
                let av = v as! UIView
                self.contentView.addSubview(av)
                av.snp.makeConstraints { (make) in
                    
                    make.top.equalTo(0)
                    make.left.equalTo(0)
                    make.right.equalTo(0)
                    make.bottom.equalTo(0)
                    
                }
            }
            
            
        }
    }
    
}
class TabContentCellModel:VueData{
    
    var view:ViewLoadProtocol?
    var isL = false
    
}

