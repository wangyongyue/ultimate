//
//  MusicMine.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class MusicMine:Vue,V_ViewControllerProtocol{
    private var http = DefaultHttp()
    var array = [VueData]()

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
            
            return false
        }
        
    }
    private func dealNav(){
        
        var array = [VueData]()
        let m = MusicMineNavCellModel()
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
 
        
        
        self.array.append(MusicMineCellModel())
         self.array.append(Music401CellModel())
         self.array.append(Music402CellModel())
         self.array.append(Music402CellModel())

        
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return self.array
                    
         }
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
            
            if index == 1{
                let number = self.array[1].v_identifier
                switch number{
                    case 0:Router.push(MusicLike(),nil,nil)
                    case 1:Router.push(MusicRecent(),nil,nil)
                    case 2:Router.push(MusicLocal(),nil,nil)
                    case 3:Router.push(MusicPurchased(),nil,nil)

                    default:Debug.log("o")
                }
                           
            }
             
           
        }
        
    }
  
    
}
