//
//  NewsInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class NewsInstructions: Configuration {

    override func getTabBar() -> BaseTabBarController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: NewsHome().v_viewController(), childTitle: "新闻", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: NewsVideo().v_viewController(), childTitle: "视频", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: NewsHot().v_viewController(), childTitle: "热推", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: NewMine().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())

      return tab
     }
}
