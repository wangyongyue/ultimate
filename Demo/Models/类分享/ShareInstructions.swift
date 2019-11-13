//
//  ShareInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ShareInstructions: Configuration {

     override func getTabBar() -> BaseTabBarController{

        let tab = BaseTabBarController()
        tab.addChildVC(childVC: ShareHome().v_viewController(), childTitle: "首页", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: ShareFound().v_viewController(), childTitle: "发现", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: ShareGood().v_viewController(), childTitle: "好货", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: ShareMine().v_viewController(), childTitle: "我", image: Image.home(), selectedImage: Image.home_sel())

        return tab
        }

}
