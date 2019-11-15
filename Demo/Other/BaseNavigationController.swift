//
//  BaseNavigationController.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.interactivePopGestureRecognizer?.isEnabled = true
        
        self.navigationBar.barTintColor = themeColor
        self.navigationBar.isTranslucent = true
        self.navigationBar.backgroundColor = themeColor
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()

//        let statusBarWindow : UIView = UIApplication.shared.value(forKey: "statusBarWindow") as! UIView
//        let statusBar : UIView = statusBarWindow.value(forKey: "statusBar") as! UIView
//        if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
//            statusBar.backgroundColor = themeColor
//        }
        
        //背景颜色
        let dict:NSDictionary = [NSAttributedString.Key.backgroundColor: UIColor.clear,NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        //标题颜色
        self.navigationBar.titleTextAttributes = dict as? [NSAttributedString.Key : AnyObject]
        
        self.navigationBar.isHidden = true
    }
    

    
}
