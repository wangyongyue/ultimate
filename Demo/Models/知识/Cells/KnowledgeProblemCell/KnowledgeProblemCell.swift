//
//  KnowledgeProblemCell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeProblemCell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 12
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "know_tou")
        return a
    }()
    
    lazy private var nameLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.text = "你在前端话题中获得赞"
        return a
    }()
    lazy private var toDoLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.textColor = UIColor.lightGray
        a.text = "稍后答"

        return a
    }()
    lazy private var timeLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .right
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.textColor = UIColor.lightGray
        a.text = "100人关注"

        return a
    }()
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "做了一年前端开发，发现自己对程序员这个行业真的爱不起来，想转行做电商可以吗？"
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
        
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.toDoLabel)
        self.contentView.addSubview(self.timeLabel)
        self.contentView.addSubview(self.headerLabel)

        
        
        self.contentView.addSubview(self.line)

        
        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            
        }
        self.nameLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(15)
            
            
        }
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.left.equalTo(12)
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(15)
            make.right.equalTo(-12)
            
        }
        self.toDoLabel.snp.makeConstraints { (make) in
            
            make.left.equalTo(12)
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(20)
            
        }
       
        self.timeLabel.snp.makeConstraints { (make) in
            
            make.left.equalTo(self.toDoLabel.snp_rightMargin).offset(25)
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(20)
           
        }
        
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(6)
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
        if aModel is KnowledgeProblemCellModel{
            
            let m = aModel as! KnowledgeProblemCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class KnowledgeProblemCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 150
    }
}

