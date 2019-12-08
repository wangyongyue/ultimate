//
//  KnowledgeM2Cell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//
import UIKit
import VueSwift
class KnowledgeM2Cell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    
    lazy private var rightImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "追风筝的人"
        a.numberOfLines = 0
        return a
    }()
    lazy private var conetentLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "永久的记录"
        a.numberOfLines = 0
        return a
    }()
    
    lazy private var timeLabel:UILabel = {
           let a = UILabel()
           a.textAlignment = .left
           a.text = "爱德华"
           a.numberOfLines = 0
           a.textColor = UIColor.lightGray

           return a
       }()
    lazy private var rightTimeLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "卡勒德"
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
        self.contentView.addSubview(self.rightTimeLabel)
        self.contentView.addSubview(self.rightImage)

        
        self.contentView.addSubview(self.line)

        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            make.height.equalTo(120)
            make.width.equalTo(Adapter.width()/2 - 24)
            
        }
        self.rightImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.right.equalTo(-12)
            make.height.equalTo(120)
            make.width.equalTo(Adapter.width()/2 - 24)
            
        }
        
        
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(15)
            make.left.equalTo(12)
            make.width.equalTo(Adapter.width()/2 - 24)

        }
        self.conetentLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.rightImage.snp_bottomMargin).offset(15)
            make.right.equalTo(-12)
            make.width.equalTo(Adapter.width()/2 - 24)
            
        }
        self.timeLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(15)
            make.left.equalTo(12)
            
        }
        self.rightTimeLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.conetentLabel.snp_bottomMargin).offset(15)
            make.left.equalTo(Adapter.width()/2 + 12)

            
        }
        
        
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(0)
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
        if aModel is KnowledgeM2CellModel{
            
            let m = aModel as! KnowledgeM2CellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class KnowledgeM2CellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 200
    }
}

