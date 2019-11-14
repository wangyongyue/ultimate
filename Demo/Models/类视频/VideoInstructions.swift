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
    tab.addChildVC(childVC: VideoHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "Video_1"), selectedImage: UIImage.init(named: "Video_1"))
      tab.addChildVC(childVC: VideoHot().v_viewController(), childTitle: "热点", image: UIImage.init(named: "Video_2"), selectedImage: UIImage.init(named: "Video_2"))
      tab.addChildVC(childVC: VideoMembers().v_viewController(), childTitle: "会员", image: UIImage.init(named: "Video_3"), selectedImage: UIImage.init(named: "Video_3"))
      tab.addChildVC(childVC: VideoDubbles().v_viewController(), childTitle: "泡泡", image: UIImage.init(named: "Video_4"), selectedImage: UIImage.init(named: "Video_4"))
      tab.addChildVC(childVC: VideoMine().v_viewController(), childTitle: "我的", image: UIImage.init(named: "Video_5"), selectedImage: UIImage.init(named: "Video_5"))


      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 9/255.0, green: 184/255.0, blue: 0/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 9/255.0, green: 184/255.0, blue: 0/255.0, alpha: 1.0)
    }
    override func navigtaionBackgroundColor() -> UIColor{
        return UIColor.init(red: 9/255.0, green: 184/255.0, blue: 0/255.0, alpha: 1.0)
    }
    override func navigtaionTextColor() -> UIColor{
        return UIColor.black
    }
    override func statusColor() -> UIColor{
        return UIColor.init(red: 9/255.0, green: 184/255.0, blue: 0/255.0, alpha: 1.0)
    }
}
