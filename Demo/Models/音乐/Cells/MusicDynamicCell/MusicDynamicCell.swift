//
//  MusicDynamicCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/16.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class MusicDynamicCell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.image = UIImage.init(named: "know_tou")
        return a
    }()
    
    lazy private var nameLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.text = "稀里哗啦"
        a.textColor = UIColor.lightGray

        return a
    }()
   
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "真正有突破行"
        a.numberOfLines = 0
        a.textColor = UIColor.lightGray
        a.font = UIFont.boldSystemFont(ofSize: 12)
        return a
    }()
    
    lazy private var contentImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
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
        self.contentView.addSubview(self.headerLabel)

        self.contentView.addSubview(self.contentImage)

        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.left.equalTo(12)
            make.height.equalTo(30)
            make.width.equalTo(30)
            
        }
        self.nameLabel.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.headImage)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(10)
            
        }
      
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(20)
            make.left.equalTo(self.headImage)
            make.right.equalTo(-12)
            
        }
        self.contentImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headerLabel.snp_bottomMargin).offset(20)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            make.height.equalTo(130)

        }
        
        
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is MusicDynamicCellModel{
            
            let m = aModel as! MusicDynamicCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class MusicDynamicCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 230
    }
}
