//
//  LoginButtonCell.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class LoginButtonCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        a.textAlignment = .center
        a.textColor = UIColor.white
        a.backgroundColor = Configuration.instructions.themeColor()
        a.layer.cornerRadius = 20
        a.layer.masksToBounds = true
        return a
    }()
    
    let tap = UITapGestureRecognizer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        
        label.snp.makeConstraints { (make) in
            
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.top.equalTo(10)
            make.bottom.equalTo(0)
            
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is LoginButtonCellModel{
            
            let h = aModel as! LoginButtonCellModel
            label.text = h.name
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class LoginButtonCellModel: VueData{
    
    
    var name:String?
    
    
    
    
    override func v_height() -> CGFloat {
        return 50
    }
    
}



