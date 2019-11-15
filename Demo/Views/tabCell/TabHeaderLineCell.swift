//
//  TabHeaderLineCell.swift
//  Demo
//
//  Created by apple on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class TabHeaderLineCell: UICollectionViewCell {
    
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = Configuration.instructions.navigtaionTextColor()
        label.backgroundColor = UIColor.clear

        return label
    }()
    lazy private var line:UIView = {
        let a = UIView()
        a.backgroundColor = bgColor
        return a
    }()
    let tap = UITapGestureRecognizer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.contentView.addSubview(headerLabel)
        self.contentView.addSubview(line)

        self.contentView.addGestureRecognizer(tap)
        headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(0.6)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is TabHeaderLineCellModel{
            let m = aModel as! TabHeaderLineCellModel
            
            headerLabel.text = m.name
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }

        }
    }
    
}
class TabHeaderLineCellModel:VueData{
    
    var name:String?
  
}

