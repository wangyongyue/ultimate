//
//  ShoppingMallInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ShoppingMallInstructions: Configuration {

    override func getTabBar() -> UIViewController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: SMHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "sm_1"), selectedImage: UIImage.init(named: "sm_1"))
      tab.addChildVC(childVC: SMClassification().v_viewController(), childTitle: "分类", image: UIImage.init(named: "sm_2"), selectedImage: UIImage.init(named: "sm_2"))
      tab.addChildVC(childVC: SMDiscovery().v_viewController(), childTitle: "发现", image: UIImage.init(named: "sm_3"), selectedImage: UIImage.init(named: "sm_3"))
      tab.addChildVC(childVC: SMShopingCart().v_viewController(), childTitle: "购物车", image: UIImage.init(named: "sm_4"), selectedImage: UIImage.init(named: "sm_4"))
      tab.addChildVC(childVC: SMMine().v_viewController(), childTitle: "我的", image: UIImage.init(named: "sm_5"), selectedImage: UIImage.init(named: "sm_5"))

      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 192/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 192/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
    }
    override func navigtaionBackgroundColor() -> UIColor{
        return UIColor.init(red: 192/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
    }
    override func navigtaionTextColor() -> UIColor{
        return UIColor.black
    }
    override func statusColor() -> UIColor{
        return UIColor.init(red: 192/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
    }
}
