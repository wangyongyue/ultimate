//
//  LoginUsernameCell.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class LoginUsernameCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        return a
    }()
    let textField:UITextField = {
        let field = UITextField()
        field.textColor = UIColor.black
        field.borderStyle = .none
        return field
    }()
    
    let tap = UITapGestureRecognizer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        self.contentView.addSubview(textField)

        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(20)
            make.left.equalTo(80)
            make.bottom.equalTo(0)
            
        }
        
        textField.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(100)
            make.right.equalTo(-20)
            make.bottom.equalTo(0)
            
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is LoginUsernameCellModel{
            
            let h = aModel as! LoginUsernameCellModel
            label.text = h.name
            textField.placeholder = h.placeholder
            textField.v_change {
                
                h.input = self.textField.text
            }
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class LoginUsernameCellModel: VueData{
    
    
    var name:String?
    var placeholder:String?
    var input:String?

    
    
    
    override func v_height() -> CGFloat {
        return 50
    }
    
}



