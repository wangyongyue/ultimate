//
//  SetupCell.swift
//  Demo
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class SetupCell: UITableViewCell {
    
    lazy private var label:UILabel = {
        let a = UILabel()
        return a
    }()
    lazy private var line:UIView = {
        let a = UIView()
        a.backgroundColor = UIColor.lightGray
        return a
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.label)
        self.contentView.addSubview(self.line)

        self.label.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(12)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        self.line.snp.makeConstraints { (make) in
            
            make.height.equalTo(0.3)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is SetupCellModel{
            
            let m = aModel as! SetupCellModel
            self.label.text = m.name
        }
    }
}
class SetupCellModel:VueData{
    
    var name:String?
    
    override func v_height() -> CGFloat {
        
        return 50
    }
}
