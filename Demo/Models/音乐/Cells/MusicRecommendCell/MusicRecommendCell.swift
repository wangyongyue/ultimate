//
//  MusicRecommendCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/16.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class MusicRecommendCell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 6
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    
    lazy private var nameLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.text = "400首最新歌曲，首首好听"
        a.textColor = UIColor.gray

        return a
    }()
    lazy private var toDoLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.font = UIFont.boldSystemFont(ofSize: 12)
        a.textColor = UIColor.lightGray
        a.text = "8888人收藏"

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
       

        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(12)
            make.left.equalTo(12)
            make.height.equalTo(80)
            make.width.equalTo(60)
            
        }
        self.nameLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage).offset(30)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(15)
            
        }
        self.toDoLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.nameLabel.snp_bottomMargin).offset(15)
            make.left.equalTo(self.headImage.snp_rightMargin).offset(15)
            
        }
        
        
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is MusicRecommendCellModel{
            
            let m = aModel as! MusicRecommendCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class MusicRecommendCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 100
    }
}
