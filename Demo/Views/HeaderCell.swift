//
//  HeaderCell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//
import UIKit
import VueSwift
class HeaderCell: UITableViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 20
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "know_tou")
        return a
    }()
    
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "昵称：w堵死了"
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
        self.contentView.addSubview(self.line)

        self.headImage.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(12)
            make.height.equalTo(40)
            make.width.equalTo(40)
            
        }
        
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.left.equalTo(self.headImage.snp_rightMargin).offset(20)
            make.centerY.equalTo(self.contentView)

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
        if aModel is HeaderCellModel{
            
            let m = aModel as! HeaderCellModel
            
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class HeaderCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 120
    }
}

