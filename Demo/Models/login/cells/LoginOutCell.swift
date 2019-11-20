//
//  LoginOutCell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class LoginOutCell: UITableViewCell {
    
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "退出登录"
        a.numberOfLines = 0
        a.textColor = Configuration.instructions.themeColor()
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
        
        self.contentView.addSubview(self.headerLabel)
        self.contentView.addSubview(self.line)

       
        
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.center.equalTo(self.contentView)

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
        if aModel is LoginOutCellModel{
            
            let m = aModel as! LoginOutCellModel
            
            tap.v_tap {
                UIViewController.toLogin()
            }
        }
    }
}
class LoginOutCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 60
    }
}

