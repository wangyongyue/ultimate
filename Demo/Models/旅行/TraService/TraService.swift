//
//  TraService.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit


import VueSwift
class TraService:Vue,V_ViewControllerProtocol{
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
        let m = TraServiceNavCellModel()
        m.name = "客服"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
         let titles = ["订单咨询","售前咨询","目的地信息","旅行指南","投诉进度"]
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
                case 0:Router.push(TraTripOrder(),nil,nil)
                case 1:Router.push(TraTripConsultation(),nil,nil)
                case 2:Router.push(TraTripDestination(),nil,nil)
                case 3:Router.push(TraTripGuide(),nil,nil)
                case 4:Router.push(TraTripComplaint(),nil,nil)
                
               default:Debug.log("o")
            }
        }
        
    }
  
   
   
    
}
