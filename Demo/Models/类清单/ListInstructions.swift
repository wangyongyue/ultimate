//
//  ListInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ListInstructions: Configuration {

    override func getTabBar() -> BaseTabBarController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: ListHome().v_viewController(), childTitle: "收集箱", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListCalender().v_viewController(), childTitle: "日历", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListClock().v_viewController(), childTitle: "打卡", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListSetup().v_viewController(), childTitle: "设置", image: Image.home(), selectedImage: Image.home_sel())

      return tab
     }
}
