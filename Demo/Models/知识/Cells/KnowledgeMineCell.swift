//
//  KnowledgeMineCell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeMineCell: UITableViewCell {
    
    lazy private var m:Vue = {
        let a = Vue()
        return a
    }()
    
    lazy private var line:UIView = {
        let a = UIView()
        a.backgroundColor = bgColor
        return a
    }()
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: WIDTH/4, height: 80)
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
        table.v_index(vId: INDEXID, vue: m)

        self.contentView.addSubview(self.line)

        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(6)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeMineCellModel{
            
            let m = aModel as! KnowledgeMineCellModel
            
            var array = Array<VueData>()
            array.append(KnowledgeMineCrossCellModel("创作"))
            array.append(KnowledgeMineCrossCellModel("关注"))
            array.append(KnowledgeMineCrossCellModel("收藏夹"))
            array.append(KnowledgeMineCrossCellModel("最近"))
           
            self.m.v_array(vId: ARRAYID) { () -> Array<VueData>? in
                return array
            }
            self.m.v_index(vId: INDEXID) { (index) in
                     
                m.v_identifier = index
                m.v_to()
                            
               
            }
        
        }
    }
}
class KnowledgeMineCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 80
    }
}

