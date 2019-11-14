//
//  TableView.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift

class TableView: UIView,ViewLoadProtocol{

    var m:Vue?
    convenience init(_ m:Vue) {
        self.init()
        
        self.m = m
        
        self.backgroundColor = Configuration.instructions.backgroundColor()

        let table = CTable()
        self.addSubview(table)
        table.backgroundColor = Configuration.instructions.backgroundColor()
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.v_index(vId: INDEXID, vue: m)
        
        
        
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
    }
    func viewLoad(){
        
        m?.v_start()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }
    
}
