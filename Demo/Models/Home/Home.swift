//
//  Home.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Home:Vue,V_ViewControllerProtocol,POSTProtocol{
    private var model = DefaultHttp()
    func v_viewController() -> UIViewController{
        let vc = TableViewController()
        vc.m = self
        vc.navigationItem.title = "home"
        return vc
    }
    
    override func v_start() {
        POST().request(params:self.model, http: self)
        self.v_index(vId: INDEXID) { (index) in
            
            Router.push(Home(), nil, nil)
        }
    }
  
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        var titles = ["字体颜色","背景图片"]
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
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
   
    
}
