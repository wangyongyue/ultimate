//
//  KnowledgeMagazine.swift
//  Demo
//
//  Created by apple on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeMagazine:Vue,GetViewProtocol{
    
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
         array.append(KnowledgeM2CellModel())
         array.append(KnowledgeM1CellModel())
         array.append(KnowledgeM2CellModel())
         array.append(KnowledgeM1CellModel())
         array.append(KnowledgeM2CellModel())
         array.append(KnowledgeM1CellModel())
         self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
             return array
                    
         }
                  
        }
        
         self.v_index(vId: INDEXID) { (index) in
             
            Router.push(KnowledgeMembersDetails(), nil, nil)
            
        }
        
    }
    
    
    
}
