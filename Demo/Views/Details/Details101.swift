//
//  Details101.swift
//  Demo
//
//  Created by wangyongyue on 2019/12/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Details101: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "know_tou")
        return a
    }()
    
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "详情内容 详情内容 详情内容 详情内容"
        a.numberOfLines = 0
        return a
    }()
    lazy private var conetentLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "详情标题"
        a.numberOfLines = 0
        a.textColor = UIColor.lightGray

        return a
    }()
    
    lazy private var timeLabel:UILabel = {
           let a = UILabel()
           a.textAlignment = .left
           a.text = "3小时前"
           a.numberOfLines = 0
           a.textColor = UIColor.lightGray

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
        self.contentView.addSubview(self.timeLabel)

        
        self.contentView.addSubview(self.line)

        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            make.height.equalTo(40)
            make.width.equalTo(40)
            
        }
        self.conetentLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.right.equalTo(-12)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(10)
            
        }
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.conetentLabel.snp_bottomMargin).offset(15)
            make.right.equalTo(-12)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(10)
            
        }
        
        self.timeLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(15)
            make.right.equalTo(-12)
            make.left.equalTo(self.headerLabel)
            
        }
        
        
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(0.6)
            make.left.equalTo(self.timeLabel)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is Details101Model{
            
            let m = aModel as! Details101Model
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class Details101Model:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 110
    }
}

