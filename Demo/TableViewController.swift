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
        
      
        let table = CTable()
        self.view.addSubview(table)
        table.backgroundColor = bgColor
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(TOP)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.v_index(vId: INDEXID, vue: m)
        m?.v_start()
        
    }
    

}
