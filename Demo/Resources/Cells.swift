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
        Vue.register(aClass: SetupCellModel.classForCoder(), toClass: SetupCell.classForCoder())
        Vue.register(aClass: MenuCellModel.classForCoder(), toClass: MenuCell.classForCoder())

        Vue.register(aClass: NavTitleCellModel.classForCoder(), toClass: NavTitleCell.classForCoder())
        Vue.register(aClass: NavBackCellModel.classForCoder(), toClass: NavBackCell.classForCoder())

        Vue.register(aClass: TabHeaderLineCellModel.classForCoder(), toClass: TabHeaderLineCell.classForCoder())
        Vue.register(aClass: TodoCellModel.classForCoder(), toClass: TodoCell.classForCoder())


    }
}
