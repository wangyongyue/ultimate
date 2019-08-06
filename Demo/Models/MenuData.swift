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
    private var model:HttpProtocol?
    func getView() -> ViewLoadProtocol {
        
        let v = CollectionView.init(self)
        return v
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
