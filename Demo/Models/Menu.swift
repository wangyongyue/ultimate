//
//  Menu.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class Menu:Vue,V_ViewControllerProtocol{
    
    func v_viewController() -> UIViewController{
        let vc = TabViewController()
        vc.m = self
        vc.navigationItem.title = "主页"
        return vc
    }
    
    override func v_start() {
        let titles = ["推荐","购物","内容","看听","旅行"]
        var array = [VueData]()
        for value in titles {
            let m = TabHeaderCellModel()
            m.name = value
            array.append(m)
        }
        
        self.v_array(vId: TABID) { () -> Array<VueData>? in
            
            return array
            
        }
        var views = [GetViewProtocol]()
//        views.append(TuiJian())
//        views.append(WaiMai())
//        views.append(Shopping())
//        views.append(JiaoTong())
//        views.append(Hotel())
//        views.append(Tools())

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

