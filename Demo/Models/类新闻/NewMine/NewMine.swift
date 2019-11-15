//
//  NewMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class NewMine:Vue,V_ViewControllerProtocol{
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
        m.name = "NewMine"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
         let titles = ["消息","历史","收藏","已推","红包"]
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
             
            switch index{
            case 0:Router.push(NewMineMessage(),nil,nil)
            case 1:Router.push(NewMineHistory(),nil,nil)
            case 2:Router.push(NewMineCollection(),nil,nil)
            case 3:Router.push(NewMinePush(),nil,nil)
            case 4:Router.push(NewMineRedEnvelope(),nil,nil)

            default:Debug.log("o")
            }
            
        }
        
    }
  
   
   
    
}
