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

        Vue.register(aClass: Music101CellModel.classForCoder(), toClass: Music101Cell.classForCoder())
        Vue.register(aClass: Music101SubCellModel.classForCoder(), toClass: Music101SubCell.classForCoder())
        Vue.register(aClass: Music102CellModel.classForCoder(), toClass: Music102Cell.classForCoder())
        Vue.register(aClass: Music102SubCellModel.classForCoder(), toClass: Music102SubCell.classForCoder())
        Vue.register(aClass: Music103CellModel.classForCoder(), toClass: Music103Cell.classForCoder())
        Vue.register(aClass: Music104CellModel.classForCoder(), toClass: Music104Cell.classForCoder())
        Vue.register(aClass: Music105CellModel.classForCoder(), toClass: Music105Cell.classForCoder())

        Vue.register(aClass: MusicHeaderCellModel.classForCoder(), toClass: MusicHeaderCell.classForCoder())

        Vue.register(aClass: Music301CellModel.classForCoder(), toClass: Music301Cell.classForCoder())
        Vue.register(aClass: Music301SubCellModel.classForCoder(), toClass: Music301SubCell.classForCoder())

        Vue.register(aClass: Music401CellModel.classForCoder(), toClass: Music401Cell.classForCoder())
        Vue.register(aClass: Music401SubCellModel.classForCoder(), toClass: Music401SubCell.classForCoder())
        Vue.register(aClass: Music402CellModel.classForCoder(), toClass: Music402Cell.classForCoder())

        
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
        return UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 0/255.0, green: 208/255.0, blue: 95/255.0, alpha: 1.0)
    }
    override func navigtaionBackgroundColor() -> UIColor{
        return UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
    }
    override func navigtaionTextColor() -> UIColor{
        return UIColor.black
    }
    override func statusColor() -> UIColor{
        return UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
    }
    override func  menuColor() -> UIColor{
          return UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
    }
}
