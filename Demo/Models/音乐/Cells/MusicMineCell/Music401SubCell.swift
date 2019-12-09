//
//  Music401SubCell.swift
//  Demo
//
//  Created by apple on 2019/12/9.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Music401SubCell: UICollectionViewCell {
    
    lazy private var headImage:UIImageView = {
        let a = UIImageView()
        a.layer.cornerRadius = 15
        a.layer.masksToBounds = true
        a.image = UIImage.init(named: "feng_1")
        return a
    }()
    
    
    lazy private var headerLabel:UILabel = {
        let a = UILabel()
        a.textAlignment = .center
        a.text = "喜欢"
        a.numberOfLines = 1
        a.font = UIFont.boldSystemFont(ofSize: 10)
        return a
    }()
    
   
    lazy private var tap:UITapGestureRecognizer = {
        let a = UITapGestureRecognizer()
        return a
    }()
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.headImage)
        
       
        self.contentView.addSubview(self.headerLabel)
        
        self.headImage.snp.makeConstraints { (make) in
            
            make.top.equalTo(12)
            make.centerX.equalTo(self.contentView)
            make.height.equalTo(30)
            make.width.equalTo(30)
            
        }
        self.headerLabel.snp.makeConstraints { (make) in
            
            make.top.equalTo(self.headImage.snp_bottomMargin).offset(12)
            make.right.equalTo(0)
            make.left.equalTo(0)

        }
        
       
        self.contentView.addGestureRecognizer(tap)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        if aModel is Music401SubCellModel{
            
            let m = aModel as! Music401SubCellModel
            headerLabel.text = m.name
            tap.v_tap {
                m.v_identifier = 0
                m.v_to()
            }
        }
    }
}
class Music401SubCellModel:VueData{
    
    var name:String?
    convenience init(_ a:String){
        self.init()
        name = a
    }
    override func v_height() -> CGFloat {
        
        return 120
    }
}

