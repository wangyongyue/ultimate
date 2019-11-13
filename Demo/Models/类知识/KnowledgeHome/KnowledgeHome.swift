//
//  KnowledgeHome.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class KnowledgeHome:Vue,V_ViewControllerProtocol{
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
        
        POST().request(params: self.http) { (isK, data) in
                   
                   
            var array = [VueData]()
            let m = NavTitleCellModel()
            m.name = "KnowledgeHome"
            array.append(m)
            self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
                return array
            }
       }
               
               
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
         let titles = ["字体颜色note","背景图片note"]
         var array = [VueData]()
         for value in titles {
                    
             let m = SetupCellModel()
             m.name = value
             array.append(m)
                    
         }
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
             Router.push(Home(), nil, nil)
            
        }
        
    }
  
   
   
    
}
