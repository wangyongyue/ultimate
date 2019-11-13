//
//  MusicInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class MusicInstructions: Configuration {

    override func getTabBar() -> BaseTabBarController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: MusicHome().v_viewController(), childTitle: "音乐馆", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: MusicRecommend().v_viewController(), childTitle: "推荐", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: MusicDynamic().v_viewController(), childTitle: "动态", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: MusicMine().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())

      return tab
     }
}
