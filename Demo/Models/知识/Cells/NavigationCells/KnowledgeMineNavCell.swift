//
//  KnowledgeMineNavCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeMineNavCell: UITableViewCell {
    
    
    lazy private var leftButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "sao_w"), for: .normal)
        return a
    }()
    lazy private var middleButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "subSearch_w"), for: .normal)
        a.setTitle(" 搜索知乎内容", for: .normal)
        a.setTitleColor(bgColor, for: .normal)
        a.layer.cornerRadius = 3
        a.layer.masksToBounds = true
        a.backgroundColor = UIColor.init(red: 30/255.0, green: 144/255.0, blue: 255/255.0, alpha: 1.0)
        a.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return a
    }()
    lazy private var rightButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "setting_w"), for: .normal)

        return a
    }()
   
    
    
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clear

        self.contentView.addSubview(leftButton)
        self.contentView.addSubview(middleButton)
        self.contentView.addSubview(rightButton)

        rightButton.snp.makeConstraints { (make) in
                   
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-15)

        }
        leftButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(rightButton.snp_leftMargin).offset(-15)
        }
       
       
        middleButton.snp.makeConstraints { (make) in
               
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-80)
            make.height.equalTo(30)
            make.left.equalTo(15)

        }
           
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeMineNavCellModel{
            let m = aModel as! KnowledgeMineNavCellModel
            

        }
    }
    
}
class KnowledgeMineNavCellModel:VueData{
    
    var name:String?
  
}

