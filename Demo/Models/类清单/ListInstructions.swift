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
      tab.addChildVC(childVC: ListHome().v_viewController(), childTitle: "首页", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListCalender().v_viewController(), childTitle: "同城", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListClock().v_viewController(), childTitle: "消息", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: ListSetup().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())

      return tab
     }
}
