//
//  MenuCell.swift
//  Demo
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class MenuCell: UICollectionViewCell {
    
    let headerLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.clear
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    let headerImage:UIImageView = {
        let a = UIImageView()
        a.backgroundColor = UIColor.clear
        a.layer.cornerRadius = 5
        a.layer.masksToBounds = true
        return a
    }()
    
    let tap = UITapGestureRecognizer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = UIColor.clear
        self.contentView.addSubview(headerImage)
        self.contentView.addSubview(headerLabel)

        self.contentView.addGestureRecognizer(tap)
        
        headerImage.contentMode = .scaleAspectFit
        headerImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(5)
            make.left.equalTo(5)
            make.right.equalTo(-5)
        }
        headerLabel.snp.makeConstraints { (make) in
            
            make.height.equalTo(40)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is MenuCellModel{
            let m = aModel as! MenuCellModel
            
          
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
            
        }
    }
    
}
class MenuCellModel:VueData{
    
    var name:String?
}


