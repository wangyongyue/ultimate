//
//  NewsInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class NewsInstructions: Configuration {
    
    override init() {
        super.init()
        
        Vue.register(aClass: NewsHomeCellModel.classForCoder(), toClass: NewsHomeCell.classForCoder())
        Vue.register(aClass: NewsVideoCellModel.classForCoder(), toClass: NewsVideoCell.classForCoder())
        Vue.register(aClass: NewsHotCellModel.classForCoder(), toClass: NewsHotCell.classForCoder())
        Vue.register(aClass: NewMineCellModel.classForCoder(), toClass: NewMineCell.classForCoder())
        
        Vue.register(aClass: NewsHomeNavCellModel.classForCoder(), toClass: NewsHomeNavCell.classForCoder())
        Vue.register(aClass: NewsVideoNavCellModel.classForCoder(), toClass: NewsVideoNavCell.classForCoder())
        Vue.register(aClass: NewsHotNavCellModel.classForCoder(), toClass: NewsHotNavCell.classForCoder())
        Vue.register(aClass: NewMineNavCellModel.classForCoder(), toClass: NewMineNavCell.classForCoder())

        
        
    }

    override func getTabBar() -> UIViewController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: NewsHome().v_viewController(), childTitle: "新闻", image: UIImage.init(named: "news_1"), selectedImage: UIImage.init(named: "news_1"))
      tab.addChildVC(childVC: NewsVideo().v_viewController(), childTitle: "视频", image: UIImage.init(named: "news_2"), selectedImage: UIImage.init(named: "news_2"))
      tab.addChildVC(childVC: NewsHot().v_viewController(), childTitle: "热推", image: UIImage.init(named: "news_3"), selectedImage: UIImage.init(named: "news_3"))
      tab.addChildVC(childVC: NewMine().v_viewController(), childTitle: "我", image: UIImage.init(named: "news_4"), selectedImage: UIImage.init(named: "news_4"))
      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 52/255.0, green: 128/255.0, blue: 219/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 52/255.0, green: 128/255.0, blue: 219/255.0, alpha: 1.0)
    }
    override func navigtaionBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func navigtaionTextColor() -> UIColor{
        return UIColor.black
    }
    override func statusColor() -> UIColor{
        return UIColor.white
    }
}
