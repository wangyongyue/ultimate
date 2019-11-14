//
//  BaseTabBarController.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        addChildVC(childVC: Home().v_viewController(), childTitle: "设置", image: Image.mine(), selectedImage: Image.mine_sel())

    }
    
    // 添加子控制器
    func addChildVC(childVC: UIViewController, childTitle: String, image: UIImage?, selectedImage:UIImage?) {
        let navigation = BaseNavigationController(rootViewController: childVC)
        
        childVC.title = childTitle
        childVC.tabBarItem.image = image
        childVC.tabBarItem.selectedImage = selectedImage
        self.addChild(navigation)
        
        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = Configuration.instructions.tabBarColor()
        self.tabBar.barTintColor = Configuration.instructions.tabBarBackgroundColor()

    }
    


}

