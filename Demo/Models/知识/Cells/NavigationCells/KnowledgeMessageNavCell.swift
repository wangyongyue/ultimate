//
//  KnowledgeMessageNavCell.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/15.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeMessageNavCell: UITableViewCell {
    
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = Configuration.instructions.navigtaionTextColor()
        label.backgroundColor = UIColor.clear
        return label
    }()
    
    lazy private var leftButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "message"), for: .normal)
        return a
    }()
    
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clear

        self.contentView.addSubview(leftButton)
        self.contentView.addSubview(headerLabel)

    
        headerLabel.snp.makeConstraints { (make) in
             make.center.equalTo(self.contentView)
        }
        leftButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-15)
        }
       
           
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeMessageNavCellModel{
            let m = aModel as! KnowledgeMessageNavCellModel
            
            headerLabel.text = m.name

        }
    }
    
}
class KnowledgeMessageNavCellModel:VueData{
    
    var name:String?
  
}

