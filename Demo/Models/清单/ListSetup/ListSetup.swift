//
//  ListSetup.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class ListSetup:Vue,V_ViewControllerProtocol{
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
        let m = ListSetupNavCellModel()
        m.name = "设置"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
         let titles = ["选项卡","主题","应用图标","声音与提醒","只能清单与标签","快速添加任务","更多设置","邀请好友享福利","玩转微信公众号","进入引导","帮助中心","反馈与建议","推荐给好友","关于"]
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
                case 0:Router.push(ListTabs(),nil,nil)
                case 1:Router.push(ListThemes(),nil,nil)
                case 2:Router.push(ListIcons(),nil,nil)
                case 3:Router.push(ListSounds(),nil,nil)
                case 4:Router.push(ListOrders(),nil,nil)
                case 5:Router.push(ListTasks(),nil,nil)
                case 6:Router.push(ListMore(),nil,nil)
                case 7:Router.push(ListBenefits(),nil,nil)
                case 8:Router.push(ListPublicNumber(),nil,nil)
                case 9:Router.push(ListGuidance(),nil,nil)
                case 10:Router.push(ListHelp(),nil,nil)
                case 11:Router.push(ListFeedback(),nil,nil)
                case 12:Router.push(ListRecommendations(),nil,nil)
                case 13:Router.push(ListAbout(),nil,nil)
               default:Debug.log("o")
            }
        }
        
    }
  
   
   
    
}
