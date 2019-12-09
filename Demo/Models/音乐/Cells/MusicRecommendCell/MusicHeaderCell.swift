//
//  MusicHeaderCell.swift
//  Demo
//
//  Created by apple on 2019/12/9.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class MusicHeaderCell: UITableViewCell {
    

    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .left
        a.text = "新手必备歌曲"
        return a
    }()
   
   
    lazy private var tap:UITapGestureRecognizer = {
        let a = UITapGestureRecognizer()
        return a
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.headerLabel)

        
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.left.equalTo(12)
            make.centerY.equalTo(self.contentView)
            
        }
       
       
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is MusicHeaderCellModel{
            
            let m = aModel as! MusicHeaderCellModel
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class MusicHeaderCellModel:VueData{
    
    var name:String?
    convenience init(_ a:String){
        self.init()
        name = a
    }
    
    override func v_height() -> CGFloat {
        
        return 50
    }
}
