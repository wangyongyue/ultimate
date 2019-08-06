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
    private var model:HttpProtocol?
    func v_viewController() -> UIViewController{
        let vc = CollectionViewController()
        vc.m = self
        vc.navigationItem.title = "home"
        return vc
    }
    
    override func v_start() {
        self.model = HttpFactory.getHttpModel()
        POST().request(params:self.model, http: self)
        self.v_index(vId: INDEXID) { (index) in
            self.model?.getIndex(vId:INDEXID,index)
        }
    }
  
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.model?.getModel(vId:ARRAYID,data)
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
   
    
}
