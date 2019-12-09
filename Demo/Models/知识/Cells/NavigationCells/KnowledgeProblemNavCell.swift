//
//  KnowledgeProblemNavCell.swift
//  Demo
//
//  Created by apple on 2019/11/20.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class KnowledgeProblemNavCell: UITableViewCell {
    
   
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = Configuration.instructions.navigtaionTextColor()
        label.backgroundColor = UIColor.clear
        return label
    }()
    
    lazy private var rightButton:UIButton = {
        let a = UIButton()
        a.setImage(UIImage.init(named: "search"), for: .normal)

        return a
    }()
   
    
    
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clear

        self.contentView.addSubview(headerLabel)
        self.contentView.addSubview(rightButton)

        
        headerLabel.snp.makeConstraints { (make) in
            
            make.center.equalTo(self.contentView)
        }
       
        rightButton.snp.makeConstraints { (make) in
            
            make.centerY.equalTo(self.contentView)
            make.right.equalTo(-15)
        }
       
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is KnowledgeProblemNavCellModel{
            let m = aModel as! KnowledgeProblemNavCellModel
            
            self.headerLabel.text = m.name

        }
    }
    
}
class KnowledgeProblemNavCellModel:VueData{
    
    var name:String?
  
}

