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
        vc.navigationItem.title = "Menu"
        return vc
    }
    
    override func v_start() {
        
        var array = [VueData]()
        for i in 1...6{
            let m = TabHeaderCellModel()
            m.name = "tab\(i)"
            array.append(m)
        }
        
        self.v_array(vId: TABID) { () -> Array<VueData>? in
            
            return array
            
        }
        
        var contentArray = [VueData]()
        for i in 1...6{
            let m = TabContentCellModel()
            m.view = MenuData().getView()
            if i == 1{
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

