//
//  NotesAssistant.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class NotesAssistant:Vue,V_ViewControllerProtocol{
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
        let m = NotesAssistantNavCellModel()
        m.name = "助理"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
        var array = [VueData]()
        for i in 1...6 {
          
           array.append(NotesAssistantCellModel())

        }
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
             Router.push(NotesAssistantDetails(), nil, nil)

        }
        
    }
  
   
   
    
}
