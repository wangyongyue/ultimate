//
//  MenuData.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class MenuData:Vue,GetViewProtocol,POSTProtocol{
    private var http = DefaultHttp()
    func getView() -> ViewLoadProtocol {
        
        let v = CollectionView.init(self)
        return v
    }
    
    override func v_start() {

        POST().request(params:self.http, http: self)
        self.v_index(vId: INDEXID) { (index) in
            
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        var array = [VueData]()
        for i in 1...12{
            
            let m = MenuCellModel()
            m.name = "home"
            array.append(m)
            
        }
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
}
