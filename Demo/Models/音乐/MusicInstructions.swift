//
//  MusicInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class MusicInstructions: Configuration {
    
    override init() {
        super.init()
        
        Vue.register(aClass: MusicHomeCellModel.classForCoder(), toClass: MusicHomeCell.classForCoder())
        Vue.register(aClass: MusicRecommendCellModel.classForCoder(), toClass: MusicRecommendCell.classForCoder())
        Vue.register(aClass: MusicDynamicCellModel.classForCoder(), toClass: MusicDynamicCell.classForCoder())
        Vue.register(aClass: MusicMineCellModel.classForCoder(), toClass: MusicMineCell.classForCoder())
        
        Vue.register(aClass: MusicHomeNavCellModel.classForCoder(), toClass: MusicHomeNavCell.classForCoder())
        Vue.register(aClass: MusicRecommendNavCellModel.classForCoder(), toClass: MusicRecommendNavCell.classForCoder())
        Vue.register(aClass: MusicDynamicNavCellModel.classForCoder(), toClass: MusicDynamicNavCell.classForCoder())
        Vue.register(aClass: MusicMineNavCellModel.classForCoder(), toClass: MusicMineNavCell.classForCoder())

        
        
    }

    override func getTabBar() -> UIViewController{
         
      let tab = BaseTabBarController()
        tab.addChildVC(childVC: MusicHome().v_viewController(), childTitle: "音乐馆", image: UIImage.init(named: "music_1"), selectedImage: UIImage.init(named: "music_1"))
      tab.addChildVC(childVC: MusicRecommend().v_viewController(), childTitle: "推荐", image: UIImage.init(named: "music_2"), selectedImage: UIImage.init(named: "music_2"))
      tab.addChildVC(childVC: MusicDynamic().v_viewController(), childTitle: "动态", image: UIImage.init(named: "music_3"), selectedImage: UIImage.init(named: "music_3"))
      tab.addChildVC(childVC: MusicMine().v_viewController(), childTitle: "我", image: UIImage.init(named: "music_4"), selectedImage: UIImage.init(named: "music_4"))

      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 0/255.0, green: 208/255.0, blue: 95/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 0/255.0, green: 208/255.0, blue: 95/255.0, alpha: 1.0)
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
