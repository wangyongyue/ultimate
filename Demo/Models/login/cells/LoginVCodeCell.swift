//
//  LoginVCodeCell.swift
//  Demo
//
//  Created by apple on 2019/7/30.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class LoginVCodeCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        a.textColor = UIColor.red
        a.text = "发送验证码"
        return a
    }()
    let textField:UITextField = {
        let field = UITextField()
        field.textColor = UIColor.black
        field.borderStyle = .none
        field.placeholder = "请输入验证码"

        return field
    }()
    let tap = UITapGestureRecognizer()
    var model:LoginVCodeCellModel?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        self.contentView.addSubview(textField)

        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.right.equalTo(-20)
            make.bottom.equalTo(0)
            
        }
        textField.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(20)
            make.bottom.equalTo(0)
            
        }
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func timeChange() {
        
        var time = 60
        let codeTimer = DispatchSource.makeTimerSource(flags: .init(rawValue: 0), queue: DispatchQueue.global())
        codeTimer.schedule(deadline: .now(), repeating: .milliseconds(1000))  //此处方法与Swift 3.0 不同
        codeTimer.setEventHandler {
            
            time = time - 1
                        
            if time < 0 {
                codeTimer.cancel()
                DispatchQueue.main.async {
                    self.model?.isCode = true
                    self.label.text = "重新发送"
                    self.label.textColor = UIColor.red

                }
                return
            }
            
            DispatchQueue.main.async {
                self.label.text = "\(time)s"
                self.label.textColor = UIColor.lightGray

            }
            
        }
        codeTimer.resume()
        
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is LoginVCodeCellModel{
            
            let h = aModel as! LoginVCodeCellModel
           
            self.model = h
            
            textField.v_change {
                
                h.input = self.textField.text
            }
            if h.isCode{
                self.timeChange()

            }else{
                
                label.textColor = UIColor.red
            }
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class LoginVCodeCellModel: VueData{
    
    
    var name:String?
    var placeholder:String?
    var input:String?
    var isCode = false

    override func v_height() -> CGFloat {
        
        return 50
    }
    
}





