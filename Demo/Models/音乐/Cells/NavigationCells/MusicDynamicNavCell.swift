//
//  MusicDynamicNavCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/16.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class MusicDynamicNavCell: UITableViewCell {
    
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = Configuration.instructions.navigtaionTextColor()
        label.backgroundColor = UIColor.clear
        label.text = "动态"
        return label
    }()
    
    lazy private var rightButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "m_2"), for: .normal)

        return a
    }()
   
    
    
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clear

        self.contentView.addSubview(headerLabel)
        self.contentView.addSubview(rightButton)

        
        headerLabel.snp.makeConstraints { (make) in
            
            make.center.equalTo(self.contentView)
        }
       
        rightButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-15)
        }
       
           
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is MusicDynamicNavCellModel{
            let m = aModel as! MusicDynamicNavCellModel
            
            headerLabel.text = m.name

        }
    }
    
}
class MusicDynamicNavCellModel:VueData{
    
    var name:String?
  
}

