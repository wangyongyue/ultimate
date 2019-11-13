//
//  VideoInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class VideoInstructions: Configuration {

   override func getTabBar() -> BaseTabBarController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: VideoHome().v_viewController(), childTitle: "首页", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: VideoHot().v_viewController(), childTitle: "热点", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: VideoMembers().v_viewController(), childTitle: "会员", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: VideoDubbles().v_viewController(), childTitle: "泡泡", image: Image.home(), selectedImage: Image.home_sel())
      tab.addChildVC(childVC: VideoMine().v_viewController(), childTitle: "我的", image: Image.home(), selectedImage: Image.home_sel())


      return tab
     }
}
