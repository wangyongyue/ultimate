//
//  ShareInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class ShareInstructions: Configuration {
    override init() {
        super.init()
        
        Vue.register(aClass: ShareHomeNavCellModel.classForCoder(), toClass: ShareHomeNavCell.classForCoder())
        Vue.register(aClass: ShareFoundNavCellModel.classForCoder(), toClass: ShareFoundNavCell.classForCoder())
        Vue.register(aClass: ShareGoodNavCellModel.classForCoder(), toClass: ShareGoodNavCell.classForCoder())
        Vue.register(aClass: ShareMineNavCellModel.classForCoder(), toClass: ShareMineNavCell.classForCoder())

        Vue.register(aClass: ShareHomeCellModel.classForCoder(), toClass: ShareHomeCell.classForCoder())
        Vue.register(aClass: ShareFoundCellModel.classForCoder(), toClass: ShareFoundCell.classForCoder())
        Vue.register(aClass: ShareGoodCellModel.classForCoder(), toClass: ShareGoodCell.classForCoder())
        Vue.register(aClass: ShareMineCellModel.classForCoder(), toClass: ShareMineCell.classForCoder())

        
    }
    override func getTabBar() -> UIViewController{

    let tab = BaseTabBarController()
    tab.addChildVC(childVC: ShareHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "share_1@3x.png"), selectedImage: UIImage.init(named: "share_1@3x.png"))
    tab.addChildVC(childVC: ShareFound().v_viewController(), childTitle: "发现", image: UIImage.init(named: "share_2@3x.png"), selectedImage: UIImage.init(named: "share_2@3x.png"))
    tab.addChildVC(childVC: ShareGood().v_viewController(), childTitle: "好货", image: UIImage.init(named: "share_3@3x.png"), selectedImage: UIImage.init(named: "share_3@3x.png"))
    tab.addChildVC(childVC: ShareMine().v_viewController(), childTitle: "我", image: UIImage.init(named: "share_4@3x.png"), selectedImage: UIImage.init(named: "share_4@3x.png"))

    return tab
    }
    override func themeColor() -> UIColor{
        return UIColor.yellow
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.black
    }
    override func navigtaionBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func navigtaionTextColor() -> UIColor{
        return UIColor.black
    }
    override func statusColor() -> UIColor{
        return UIColor.white
    }

}
