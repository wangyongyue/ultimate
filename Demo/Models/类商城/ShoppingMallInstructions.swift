//
//  ShoppingMallInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ShoppingMallInstructions: Configuration {

    override func getTabBar() -> BaseTabBarController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: SMHome().v_viewController(), childTitle: "首页", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: SMClassification().v_viewController(), childTitle: "同城", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: SMDiscovery().v_viewController(), childTitle: "消息", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: SMShopingCart().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: SMMine().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())

      return tab
     }
}
