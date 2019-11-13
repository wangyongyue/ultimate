//
//  Alert.swift
//  Demo
//
//  Created by wangyongyue on 2019/8/22.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class Alert: UIView {

    static func show(str:String){
        
        let v = UIView()
        v.backgroundColor = UIColor.init(white: 0.6, alpha: 0.3)
        
        let window = UIApplication.shared.keyWindow
        v.frame = window?.bounds ?? CGRect.zero
        window?.addSubview(v)
        
        let label = UILabel()
        label.textColor = UIColor.black
        label.frame = CGRect.init(x: 50, y: v.frame.height/2 - 80, width: v.frame.width - 100, height: 50)
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.backgroundColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        v.addSubview(label)
        
        label.text = str
        
    
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {

            v.removeFromSuperview()
        }
        
        
    }
    static func loading(){
           
        let view = AlertView()
        view.backgroundColor = UIColor.init(white: 0.6, alpha: 0.3)
        let window = UIApplication.shared.keyWindow
        view.frame = window?.bounds ?? CGRect.zero
        window?.addSubview(view)
        let spinner = UIActivityIndicatorView.init(style: .whiteLarge)
        spinner.color = UIColor.white;
        spinner.center = view.center
        view.addSubview(spinner)
        spinner.startAnimating()
           
    }
    static func dissmiss(){
        let window = UIApplication.shared.keyWindow
        let arr = window?.subviews
        if let a = arr{
            for value in a{
                if value is AlertView{
                    value.removeFromSuperview()
                }
            }
           
        }
        
    }
    

}
