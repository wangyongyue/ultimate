//
//  Configuration.swift
//  Demo
//
//  Created by apple on 2019/7/5.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

let TOP:CGFloat = 64
let BOTTOM:CGFloat = 40
let WIDTH:CGFloat = UIScreen.main.bounds.width
let HEIGHT:CGFloat = UIScreen.main.bounds.height

//主体颜色
let  themeColor = UIColor.init(red: 9/255.0, green: 169/255.0, blue: 159/255.0, alpha: 1.0)
let  bgColor = UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)

class Configuration{
    static let instructions = NewsInstructions()
    
    func getTabBar() -> UIViewController{
        let tab = BaseTabBarController()
        tab.addChildVC(childVC: Home().v_viewController(), childTitle: "主页", image: Image.home(), selectedImage: Image.home_sel())
        return tab
    }
    func themeColor() -> UIColor{
        return UIColor.init(red: 9/255.0, green: 169/255.0, blue: 159/255.0, alpha: 1.0)
    }
    func backgroundColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    func tabBarBackgroundColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    func tabBarColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    func navigtaionBackgroundColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    func statusColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    func navigtaionTextColor() -> UIColor{
          return UIColor.black
    }
    
}
extension UIViewController{
    
   
    static func toHome(){
        let app = UIApplication.shared.delegate as! AppDelegate
        let tab = Configuration.instructions.getTabBar()
        app.window?.rootViewController = tab;
        app.window?.makeKeyAndVisible();
        
//        let tab = BaseNavigationController.init(rootViewController: Menu().v_viewController())

    
    }
}
