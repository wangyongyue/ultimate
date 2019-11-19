//
//  VideoMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class VideoMine:Vue,V_ViewControllerProtocol{
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
        let m = VideoMineNavCellModel()
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
                       
              
         let titles = ["收藏","历史","我的下载","我的预约","创作中心","我的钱包","我的购买","主题皮肤"]
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
            case 0:Router.push(VideoCollection(),nil,nil)
            case 1:Router.push(VideoHistory(),nil,nil)
            case 2:Router.push(VideoDownload(),nil,nil)
            case 3:Router.push(VideoAppointment(),nil,nil)
            case 4:Router.push(VideoCreation(),nil,nil)
            case 5:Router.push(VideoWallet(),nil,nil)
            case 6:Router.push(VideoPurchase(),nil,nil)
            case 7:Router.push(VideoTheme(),nil,nil)

            default:Debug.log("o")
            }
        }
        
    }
  
   
   
    
}
