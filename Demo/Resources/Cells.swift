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
        Vue.register(aClass: HeaderCellModel.classForCoder(), toClass: HeaderCell.classForCoder())

        Vue.register(aClass: LoginHeaderCellModel.classForCoder(), toClass: LoginHeaderCell.classForCoder())
        Vue.register(aClass: LoginUsernameCellModel.classForCoder(), toClass: LoginUsernameCell.classForCoder())
        Vue.register(aClass: LoginPasswordCellModel.classForCoder(), toClass: LoginPasswordCell.classForCoder())
        Vue.register(aClass: LoginForgetButtonCellModel.classForCoder(), toClass: LoginForgetButtonCell.classForCoder())
        Vue.register(aClass: LoginButtonCellModel.classForCoder(), toClass: LoginButtonCell.classForCoder())
       
        Vue.register(aClass: LoginOtherCellModel.classForCoder(), toClass: LoginOtherCell.classForCoder())
        Vue.register(aClass: LoginVCodeCellModel.classForCoder(), toClass: LoginVCodeCell.classForCoder())
        Vue.register(aClass: LoginOutCellModel.classForCoder(), toClass: LoginOutCell.classForCoder())
        
        
        Vue.register(aClass: Details101Model.classForCoder(), toClass: Details101.classForCoder())
        Vue.register(aClass: Details102Model.classForCoder(), toClass: Details101.classForCoder())
        Vue.register(aClass: Details103Model.classForCoder(), toClass: Details101.classForCoder())
        Vue.register(aClass: Details104Model.classForCoder(), toClass: Details101.classForCoder())
        Vue.register(aClass: Details105Model.classForCoder(), toClass: Details101.classForCoder())



    }
}
