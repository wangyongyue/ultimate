//
//  Login.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class Login:Vue,V_ViewControllerProtocol{
    var array = [VueData]()
    private var http = DefaultHttp()
    func v_viewController() -> UIViewController{
        let vc = TableViewController()
        vc.m = self
        return vc
        
    }
    
    override func v_start() {
                
        dealNav()
        dealContent()
      
    }
    private func dealNav(){
        
        var array = [VueData]()
        let m = NavTitleCellModel()
        m.name = "登录"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       let header = LoginHeaderCellModel()
       
       let username = LoginUsernameCellModel()
       username.name = "用户名"
       username.placeholder = "请输入用户名"
       
       let paseword = LoginPasswordCellModel()
       paseword.name = "密码"
       paseword.placeholder = "请输入密码"

       let forgetPW = LoginForgetButtonCellModel()
       forgetPW.name = "忘记密码"
       
       let login = LoginButtonCellModel()
       login.name = "登录"
       
       let register = LoginButtonCellModel()
       register.name = "注册"
       
       let other = LoginOtherCellModel()
       other.name = "第三方登录"
       
       
       self.array.append(header)
       self.array.append(username)
       self.array.append(paseword)
       self.array.append(forgetPW)
       self.array.append(login)
       self.array.append(register)
       self.array.append(other)

       self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
           
           return self.array
           
       }
        
         self.v_index(vId: INDEXID) { (index) in
             
            UIApplication.shared.keyWindow?.endEditing(true)

           if index == 3{
               
               Router.push(Forget(), nil, nil)
               
           }else if index == 4{
               
               POST().request(params: self.http) { (isY, data) in
                   Alert.show(str: "登录成功")
                   UIViewController.toHome()
               }
              

           }else if index == 5{
               
               Router.push(Registered(), nil, nil)

           }
        }
        
    }
    
    
}

