//
//  CollectionViewController.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class CollectionViewController: UIViewController {

    var m:Vue?
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: WIDTH/2, height: WIDTH/2)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let table = CCollection.init(frame: CGRect.zero, collectionViewLayout: layout)
        self.view.addSubview(table)
        table.backgroundColor = UIColor.white
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
