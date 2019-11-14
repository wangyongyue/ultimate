//
//  TableViewController.swift
//  Demo
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class TableViewController: UIViewController {

    var m:Vue?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = Configuration.instructions.backgroundColor()
    
        let navigation = CTable()
        self.view.addSubview(navigation)
        navigation.backgroundColor = Configuration.instructions.navigtaionBackgroundColor()
        navigation.snp.makeConstraints { (make) in
            
            make.top.equalTo(Adapter.topStatus())
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(Adapter.topNavigation())
        }
       
      
        let table = CTable()
        self.view.addSubview(table)
        table.backgroundColor = Configuration.instructions.backgroundColor()
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(TOP)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.v_index(vId: INDEXID, vue: m)
        
        navigation.v_array(vId: NAVARRAYID, vue: m)
        navigation.v_index(vId: NAVINDEXID, vue: m)
        
        m?.v_start()
        
    }

}
