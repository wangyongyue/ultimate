//
//  KnowledgeMembersCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeMembersNavCell: UITableViewCell {
    
   
    lazy private var leftButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "qingdan"), for: .normal)
        return a
    }()
    lazy private var middleButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "tou"), for: .normal)
        a.setTitle("   加入会员可以享受各种福利待遇", for: .normal)
        a.setTitleColor(UIColor.lightGray, for: .normal)
        a.layer.cornerRadius = 3
        a.layer.masksToBounds = true
        a.backgroundColor = bgColor
        a.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return a
    }()
    lazy private var rightButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "search"), for: .normal)

        return a
    }()
   
    
    
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clear

        self.contentView.addSubview(leftButton)
        self.contentView.addSubview(middleButton)
        self.contentView.addSubview(rightButton)

        
        leftButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-45)
        }
       
        rightButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-15)
        }
        middleButton.snp.makeConstraints { (make) in
               
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(15)
            make.height.equalTo(30)

        }
           
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeMembersNavCellModel{
            let m = aModel as! KnowledgeMembersNavCellModel
            

        }
    }
    
}
class KnowledgeMembersNavCellModel:VueData{
    
    var name:String?
  
}

