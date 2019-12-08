//
//  VideoCircle.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/14.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class VideoCircle:Vue,GetViewProtocol{
    
    private var http = DefaultHttp()
    func getView() -> ViewLoadProtocol {
        let v = TableView.init(self)
        return v
    }
    
    override func v_start() {
                
        dealContent()
      
    }
   
    private func dealContent(){
        
       POST().request(params: self.http) { (isK, data) in
                       
              
        var array = [VueData]()
         for i in 1...6 {
             
              array.append(VideoDubblesCellModel())
                     
          }
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
            Router.push(VideoDubblesDetails(), nil, nil)
        }
        
    }
    
    
    
}
