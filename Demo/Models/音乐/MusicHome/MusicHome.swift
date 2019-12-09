//
//  MusicHome.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class MusicHome:Vue,V_ViewControllerProtocol{
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
        let m = MusicHomeNavCellModel()
        m.name = "音乐馆"
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
        array.append(Music101CellModel())
        array.append(Music105CellModel())

        array.append(MusicHomeCellModel("官方歌曲"))
        array.append(Music102CellModel())
        array.append(MusicHomeCellModel("达人歌曲"))
        array.append(Music102CellModel())
        array.append(MusicHomeCellModel("分类社区"))
        array.append(Music103CellModel())
        array.append(MusicHomeCellModel("最新专辑"))
        array.append(Music102CellModel())
        array.append(MusicHomeCellModel("一起听"))
        array.append(Music104CellModel())
        array.append(MusicHomeCellModel("VIP"))
        array.append(Music103CellModel())
        array.append(MusicHomeCellModel("精选视频"))
        array.append(Music103CellModel())

         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
            Router.push(MusicHomeDetails(), nil, nil)
        }
        
    }
  
   
   
    
}
