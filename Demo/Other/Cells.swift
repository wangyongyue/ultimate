//
//  Cells.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Cells: NSObject {

    static func registerCells(){
        
        Vue.register(aClass: TabHeaderCellModel.classForCoder(), toClass: TabHeaderCell.classForCoder())
        Vue.register(aClass: TabContentCellModel.classForCoder(), toClass: TabContentCell.classForCoder())

        
        

    }
}
