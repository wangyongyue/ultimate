//
//  ListInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class ListInstructions: Configuration {

    override init() {
           
        super.init()
        
        Vue.register(aClass: ListHomeNavCellModel.classForCoder(), toClass: ListHomeNavCell.classForCoder())
        Vue.register(aClass: ListCalenderNavCellModel.classForCoder(), toClass: ListCalenderNavCell.classForCoder())
        Vue.register(aClass: ListClockNavCellModel.classForCoder(), toClass: ListClockNavCell.classForCoder())
        Vue.register(aClass: ListSetupNavCellModel.classForCoder(), toClass: ListSetupNavCell.classForCoder())

        Vue.register(aClass: ListHomeCellModel.classForCoder(), toClass: ListHomeCell.classForCoder())
        Vue.register(aClass: ListCalenderCellModel.classForCoder(), toClass: ListCalenderCell.classForCoder())
        Vue.register(aClass: ListClockCellModel.classForCoder(), toClass: ListClockCell.classForCoder())
        Vue.register(aClass: ListSetupCellModel.classForCoder(), toClass: ListSetupCell.classForCoder())

           
           
       }
    override func getTabBar() -> UIViewController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: ListHome().v_viewController(), childTitle: "收集箱", image: UIImage.init(named: "list_1"), selectedImage: UIImage.init(named: "list_1"))
      tab.addChildVC(childVC: ListCalender().v_viewController(), childTitle: "日历", image: UIImage.init(named: "list_2"), selectedImage: UIImage.init(named: "list_2"))
      tab.addChildVC(childVC: ListClock().v_viewController(), childTitle: "打卡", image: UIImage.init(named: "list_3"), selectedImage: UIImage.init(named: "list_3"))
      tab.addChildVC(childVC: ListSetup().v_viewController(), childTitle: "设置", image: UIImage.init(named: "list_4"), selectedImage: UIImage.init(named: "list_4"))

      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 81/255.0, green: 131/255.0, blue: 217/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 81/255.0, green: 131/255.0, blue: 217/255.0, alpha: 1.0)
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
