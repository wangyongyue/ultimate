//
//  NewsHot.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit


import VueSwift
class NewsHot:Vue,V_ViewControllerProtocol{
    
    
    func v_viewController() -> UIViewController{
            let vc = TabViewController()
            vc.m = self
            vc.number = 4
            return vc
        }
        
        override func v_start() {
            dealNav()
            dealTab()
            dealContent()
            
        }
    
    private func dealNav(){
        
     
        var array = [VueData]()
        let m = NavTitleCellModel()
        m.name = "NewsHot"
        array.append(m)
        self.v_array(vId: NAVARRAYID) { () -> Array<VueData>? in
            return array
        }
               
        self.v_index(vId: NAVINDEXID) { (index) in
            
        }
        
    }
    private func dealTab(){
        let titles = ["推荐","热榜","话题榜","星推荐"]
        var array = [VueData]()
        for value in titles {
            let m = TabHeaderCellModel()
            m.name = value
            array.append(m)
        }
        
        self.v_array(vId: TABID) { () -> Array<VueData>? in
            
            return array
            
        }
                       
        
    }
    private func dealContent(){
        
        var views = [GetViewProtocol]()
        views.append(NewsHotRecom())
        views.append(NewsHotList())
        views.append(NewsHotTopic())
        views.append(NewsHotStar())

        var contentArray = [VueData]()
        for (index,value) in views.enumerated(){
            let m = TabContentCellModel()
            m.view = value.getView()
            if index == 0{
                m.view?.viewLoad()
                m.isL = true
                
            }
            contentArray.append(m)
        }
        
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return contentArray
            
        }
        
        self.v_index(vId: TABINDEXID) { (index) in
            
            let v = contentArray[index] as! TabContentCellModel
            if v.isL == false{
                v.view?.viewLoad()
                v.isL = true
                
            }
            
        }
    }
  
   
   
    
}
