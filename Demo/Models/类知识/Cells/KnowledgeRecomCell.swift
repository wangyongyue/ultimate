//
//  KnowledgeRecomCell.swift
//  Demo
//
//  Created by apple on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeRecomCell: UITableViewCell {
    
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
        a.text = ""
        return a
    }()
    lazy private var toDoLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.textColor = UIColor.lightGray
        a.text = "Irobodslkd吃或，二人世界，咖啡控"

        return a
    }()
    lazy private var timeLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .right
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.textColor = UIColor.lightGray
        a.text = "1小时前"

        return a
    }()
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "都说黄种人的身体素质大不了NFL，但是，又高又壮的蒙古摔跤手也不行吗？"
        a.numberOfLines = 0
        return a
    }()
    lazy private var conetentLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "题目问的不错，能发自内心的希望同袍有朝一日鞥进军NFL的想法很好，而且将中华大地56个名族中最好的老实交代了司法局上来看对方水电费吉林省的飞机上来看东方嘉盛"
        a.numberOfLines = 2

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
        self.contentView.addSubview(self.conetentLabel)

        
        
        self.contentView.addSubview(self.line)

        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            
        }
        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(10)
            make.left.equalTo(self.headerLabel)
            make.height.equalTo(30)
            make.width.equalTo(30)
            
        }
        self.toDoLabel.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.headImage)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(10)
            
        }
        
        self.conetentLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(20)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            
        }
        self.timeLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.conetentLabel.snp_bottomMargin).offset(20)
            make.left.equalTo(12)
           
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
        if aModel is KnowledgeRecomCellModel{
            
            let m = aModel as! KnowledgeRecomCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class KnowledgeRecomCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 180
    }
}

