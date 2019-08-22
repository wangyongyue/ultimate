//
//  WaiMai.swift
//  Demo
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class WaiMai:Vue,GetViewProtocol,POSTProtocol{
    private var model = DefaultHttp()
    private var array = [VueData]()

    func getView() -> ViewLoadProtocol {
        
        let v = CollectionView.init(self)
        return v
    }
    
    override func v_start() {
        
        POST().request(params:self.model, http: self)
        self.v_index(vId: INDEXID) { (index) in
            
            let m = self.array[index] as! MenuCellModel
            if let str = m.icon?.toUrl{
                let url = URL.init(string: str)
                if (UIApplication.shared.canOpenURL(url!))
                {
                    UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                }else{
                    
                    Alert.show(str: "没有安装\(m.icon?.name ?? ""),请前往AppStore下载")
                }
            }
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        for value in DataContent.getWaiMai(){
            
            let m = MenuCellModel()
            m.icon = value
            self.array.append(m)
            
        }
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
}

