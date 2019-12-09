//
//  ShortVideoInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class ShortVideoInstructions: Configuration {

    
    override init() {
        super.init()
        
        Vue.register(aClass: SVHomeNavCellModel.classForCoder(), toClass: SVHomeNavCell.classForCoder())
        Vue.register(aClass: SVCityNavCellModel.classForCoder(), toClass: SVCityNavCell.classForCoder())
        Vue.register(aClass: SVMessageNavCellModel.classForCoder(), toClass: SVMessageNavCell.classForCoder())
        Vue.register(aClass: SVMineNavCellModel.classForCoder(), toClass: SVMineNavCell.classForCoder())

        Vue.register(aClass: SVHomeCellModel.classForCoder(), toClass: SVHomeCell.classForCoder())
        Vue.register(aClass: SVCityCellModel.classForCoder(), toClass: SVCityCell.classForCoder())
        Vue.register(aClass: SVMessageCellModel.classForCoder(), toClass: SVMessageCell.classForCoder())
        Vue.register(aClass: SVMineCellModel.classForCoder(), toClass: SVMineCell.classForCoder())


        
    }
     override func getTabBar() -> UIViewController{
           
        let tab = BaseTabBarController()
        tab.addChildVC(childVC: SVHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "sv_1"), selectedImage: UIImage.init(named: "sv_1"))
        tab.addChildVC(childVC: SVCity().v_viewController(), childTitle: "同城", image: UIImage.init(named: "sv_2"), selectedImage: UIImage.init(named: "sv_2"))
        tab.addChildVC(childVC: SVMessage().v_viewController(), childTitle: "消息", image: UIImage.init(named: "sv_3"), selectedImage: UIImage.init(named: "sv_3"))
        tab.addChildVC(childVC: SVMine().v_viewController(), childTitle: "我", image: UIImage.init(named: "sv_4"), selectedImage: UIImage.init(named: "sv_4"))

        return tab
       }
       override func themeColor() -> UIColor{

           return UIColor.init(red: 51/255.0, green: 213/255.0, blue: 121/255.0, alpha: 1.0)
       }
       
       override func backgroundColor() -> UIColor{
           return UIColor.init(red: 14/255.0, green: 16/255.0, blue: 23/255.0, alpha: 1.0)
       }
       override func tabBarBackgroundColor() -> UIColor{
           return UIColor.black
       }
       override func tabBarColor() -> UIColor{
           return UIColor.white
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
