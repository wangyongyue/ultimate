//
//  KnowledgeInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class KnowledgeInstructions: Configuration {

     override func getTabBar() -> BaseTabBarController{
        
           let tab = BaseTabBarController()
           tab.addChildVC(childVC: Notes().v_viewController(), childTitle: "主页", image: Image.home(), selectedImage: Image.home_sel())
           tab.addChildVC(childVC: Home().v_viewController(), childTitle: "主页", image: Image.home(), selectedImage: Image.home_sel())

           return tab
       }
}
