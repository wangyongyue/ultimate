//
//  TravelInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class TravelInstructions: Configuration {

   
    override init() {
           super.init()
           
           Vue.register(aClass: TraHomeNavCellModel.classForCoder(), toClass: TraHomeNavCell.classForCoder())
           Vue.register(aClass: TraTripNavCellModel.classForCoder(), toClass: TraTripNavCell.classForCoder())
           Vue.register(aClass: TraJourneyNavCellModel.classForCoder(), toClass: TraJourneyNavCell.classForCoder())
           Vue.register(aClass: TraServiceNavCellModel.classForCoder(), toClass: TraServiceNavCell.classForCoder())
           Vue.register(aClass: TraMineNavCellModel.classForCoder(), toClass: TraMineNavCell.classForCoder())

           Vue.register(aClass: TraHomeCellModel.classForCoder(), toClass: TraHomeCell.classForCoder())
           Vue.register(aClass: TraTripCellModel.classForCoder(), toClass: TraTripCell.classForCoder())
           Vue.register(aClass: TraJourneyCellModel.classForCoder(), toClass: TraJourneyCell.classForCoder())
           Vue.register(aClass: TraServiceCellModel.classForCoder(), toClass: TraServiceCell.classForCoder())
           Vue.register(aClass: TraMineCellModel.classForCoder(), toClass: TraMineCell.classForCoder())

           
       }
     override func getTabBar() -> UIViewController{
         
      let tab = BaseTabBarController()
      tab.addChildVC(childVC: TraHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "travel_1"), selectedImage: UIImage.init(named: "travel_1"))
      tab.addChildVC(childVC: TraTrip().v_viewController(), childTitle: "行程", image: UIImage.init(named: "travel_2"), selectedImage: UIImage.init(named: "travel_2"))
      tab.addChildVC(childVC: TraJourney().v_viewController(), childTitle: "旅拍", image: UIImage.init(named: "travel_3"), selectedImage: UIImage.init(named: "travel_3"))
      tab.addChildVC(childVC: TraService().v_viewController(), childTitle: "客服", image: UIImage.init(named: "travel_4"), selectedImage: UIImage.init(named: "travel_4"))
      tab.addChildVC(childVC: TraMine().v_viewController(), childTitle: "我的", image: UIImage.init(named: "travel_5"), selectedImage: UIImage.init(named: "travel_5"))

      return tab
     }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 51/255.0, green: 213/255.0, blue: 121/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 51/255.0, green: 213/255.0, blue: 121/255.0, alpha: 1.0)
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
