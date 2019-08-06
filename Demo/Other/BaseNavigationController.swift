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
        
        self.navigationBar.backgroundColor = UIColor.white
        //背景颜色
        let dict:NSDictionary = [NSAttributedString.Key.backgroundColor: UIColor.clear,NSAttributedString.Key.foregroundColor: UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)]
        //标题颜色
        self.navigationBar.titleTextAttributes = dict as? [NSAttributedString.Key : AnyObject]
    }
    
}
