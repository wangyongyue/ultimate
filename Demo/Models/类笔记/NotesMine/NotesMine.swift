//
//  NotesMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class NotesMine:Vue,V_ViewControllerProtocol{
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
        let m = NotesMineNavCellModel()
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
                       
              
         let titles = ["我的账户","我的消息","活动","官方笔记本","帮助","设置","关于"]
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
            case 0:Router.push(NotesMyAccount(),nil,nil)
            case 1:Router.push(NotesMyNews(),nil,nil)
            case 2:Router.push(NotesEvents(),nil,nil)
            case 3:Router.push(NotesBook(),nil,nil)
            case 4:Router.push(NotesHelp(),nil,nil)
            case 5:Router.push(NotesSetting(),nil,nil)
            case 6:Router.push(NotesAbout(),nil,nil)

            default:Debug.log("o")
            }
        }
        
    }
  
   
   
    
}
