//
//  ShareMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit


import VueSwift
class ShareMine:Vue,V_ViewControllerProtocol{
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
        let m = ShareMineNavCellModel()
        m.name = "我的"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
         let titles = ["通知","私聊","好货交易","我有","想要","标签","直播","发现好友","好友动态","设置"]
         var array = [VueData]()
         for value in titles {
                    
             let m = TodoCellModel()
             m.name = value
             array.append(m)
                    
         }
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
            switch index{
               
                case 0:Router.push(ShareNotice(),nil,nil)
                case 1:Router.push(ShareChat(),nil,nil)
                case 2:Router.push(ShareTransaction(),nil,nil)
                case 3:Router.push(ShareHave(),nil,nil)
                 case 4:Router.push(ShareWant(),nil,nil)
                 case 5:Router.push(ShareTag(),nil,nil)
                 case 6:Router.push(ShareLive(),nil,nil)
                 case 7:Router.push(ShareFriends(),nil,nil)
                 case 8:Router.push(ShareSocialUpdates(),nil,nil)
                 case 9:Router.push(ShareSetting(),nil,nil)

               default:Debug.log("o")
            }
        }
        
    }
  
   
   
    
}
