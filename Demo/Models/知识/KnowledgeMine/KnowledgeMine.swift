//
//  KnowledgeMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class KnowledgeMine:Vue,V_ViewControllerProtocol{
    private var http = DefaultHttp()
    
    func v_viewController() -> UIViewController{
        let vc = TableViewController()
        vc.m = self
        return vc
    }
    
    override func v_start() {
        dealStatus()
        dealNav()
        dealContent()
      
    }
    private func dealStatus(){
        
        self.v_if(vId: STATUSID) { () -> Bool? in
            
            return true
        }
        
    }
    private func dealNav(){
        
        var array = [VueData]()
        let m = KnowledgeMineNavCellModel()
        m.name = "我的"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        var array = [VueData]()

       POST().request(params: self.http) { (isK, data) in
                       
        
         array.append(HeaderCellModel())
         array.append(KnowledgeMineCellModel())
         array.append(LoginOutCellModel())
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
            
            if index == 0{return}
            let data = array[index] as! VueData
            let number = data.v_identifier
            
             switch number{
                case 0:Router.push(KnowCreation(),nil,nil)
                case 1:Router.push(KnowAttention(),nil,nil)
                case 2:Router.push(KnowFavorites(),nil,nil)
                case 3:Router.push(KnowRecent(),nil,nil)
                default:Debug.log("o")
             }
                        
           
        }
        
    }
  
   
   
    
}
