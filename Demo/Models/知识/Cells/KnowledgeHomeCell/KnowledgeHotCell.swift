//
//  KnowledgeHotCell.swift
//  Demo
//
//  Created by apple on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeHotCell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "如何看待里皮辞去国足主帅一职？会给国足待来什么影响？"
        a.numberOfLines = 0
        return a
    }()
    lazy private var conetentLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "6266 万热度"
        a.numberOfLines = 0

        return a
    }()
    
    
    
    lazy private var line:UIView = {
        let a = UIView()
        a.backgroundColor = bgColor
        return a
    }()
    lazy private var tap:UITapGestureRecognizer = {
        let a = UITapGestureRecognizer()
        return a
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.headImage)
        
       
        self.contentView.addSubview(self.headerLabel)
        self.contentView.addSubview(self.conetentLabel)

        
        self.contentView.addSubview(self.line)

        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.right.equalTo(-12)
            make.height.equalTo(70)
            make.width.equalTo(150)
            
        }
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            make.right.equalTo(self.headImage.snp_leftMargin).offset(-20)
            
        }
        self.conetentLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(20)
            make.left.equalTo(12)
            
        }
        
        
        
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(0.6)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeHotCellModel{
            
            let m = aModel as! KnowledgeHotCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class KnowledgeHotCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 120
    }
}

