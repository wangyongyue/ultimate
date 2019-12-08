//
//  KnowledgeM3Cell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeM3Cell: UITableViewCell {
    
    lazy private var m:Vue = {
        let a = Vue()
        return a
    }()
    
    lazy private var line:UIView = {
        let a = UIView()
        a.backgroundColor = bgColor
        return a
    }()
    lazy private var tap:UITapGestureRecognizer = {
        let a = UITapGestureRecognizer()
        return a
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: WIDTH/3, height: 260)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let table = CCollection.init(frame: CGRect.zero, collectionViewLayout: layout)
        self.addSubview(table)
        table.backgroundColor = UIColor.clear
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        
        
        self.contentView.addSubview(self.line)

        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(6)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeM3CellModel{
            
            let m = aModel as! KnowledgeM3CellModel
            
            var array = Array<VueData>()
            array.append(KnowledgeM3CrossCellModel())
            array.append(KnowledgeM3CrossCellModel())
            array.append(KnowledgeM3CrossCellModel())
            array.append(KnowledgeM3CrossCellModel())
            array.append(KnowledgeM3CrossCellModel())
            array.append(KnowledgeM3CrossCellModel())
            self.m.v_array(vId: ARRAYID) { () -> Array<VueData>? in
                return array
            }

            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class KnowledgeM3CellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 320
    }
}

