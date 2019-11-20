//
//  Registered.swift
//  Demo
//
//  Created by apple on 2019/7/30.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Registered:Vue,V_ViewControllerProtocol{
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
        let m = NavBackCellModel()
        m.name = "注册"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       let username = LoginUsernameCellModel()
        username.name = "用户名"
        username.placeholder = "请输入用户名"
       
        let vcode = LoginVCodeCellModel()

        let paseword = LoginPasswordCellModel()
        paseword.name = "密码"
        paseword.placeholder = "请输入密码"

        let login = LoginButtonCellModel()
        login.name = "注册"
       
        
        self.array.append(username)
        self.array.append(vcode)
        self.array.append(paseword)
        self.array.append(login)
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
             
        
         self.v_index(vId: INDEXID) { (index) in
            if index == 1{
                let m = self.array[1] as! LoginVCodeCellModel
                if m.isCode == true {return}
                m.isCode = true
                self.v_if(vId: RELOADDataID) { () -> Bool? in
                    return true
                }
                
            }
           if index == 3{
               
               POST().request(params: self.http) { (isY, data) in
                   Alert.show(str: "注册成功")
                   Router.pop(nil)
               }
           }
        }
        
    }
    
    
}



