//
//  LoginHeaderCell.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class LoginHeaderCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        a.textAlignment = .center
        a.text = "登录"
        return a
    }()
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 30
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    let tap = UITapGestureRecognizer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        self.contentView.addSubview(headImage)

        
        headImage.snp.makeConstraints { (make) in
            
            make.centerX.equalTo(self.contentView)
            make.height.equalTo(60)
            make.width.equalTo(60)
            make.top.equalTo(0)

        }
        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(20)
            make.left.equalTo(0)
            make.right.equalTo(0)
            
        }
        
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is LoginHeaderCellModel{
            
            let h = aModel as! LoginHeaderCellModel
            label.text = h.name
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class LoginHeaderCellModel: VueData{
    
    
    var name:String?
    
    
    
    
    override func v_height() -> CGFloat {
        return 100
    }
    
}



