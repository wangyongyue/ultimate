//
//  KnowledgeInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class KnowledgeInstructions: Configuration {
    
    override init() {
        super.init()
        
        Vue.register(aClass: KnowledgeAttentionCellModel.classForCoder(), toClass: KnowledgeAttentionCell.classForCoder())
        Vue.register(aClass: KnowledgeRecomCellModel.classForCoder(), toClass: KnowledgeRecomCell.classForCoder())
        Vue.register(aClass: KnowledgeHotCellModel.classForCoder(), toClass: KnowledgeHotCell.classForCoder())
        Vue.register(aClass: KnowledgeMembersCellModel.classForCoder(), toClass: KnowledgeMembersCell.classForCoder())
        Vue.register(aClass: KnowledgeMessageCellModel.classForCoder(), toClass: KnowledgeMessageCell.classForCoder())

        
        Vue.register(aClass: KnowledgeHomeNavCellModel.classForCoder(), toClass: KnowledgeHomeNavCell.classForCoder())
        Vue.register(aClass: KnowledgeMembersNavCellModel.classForCoder(), toClass: KnowledgeMembersNavCell.classForCoder())
        Vue.register(aClass: KnowledgeMessageNavCellModel.classForCoder(), toClass: KnowledgeMessageNavCell.classForCoder())
        Vue.register(aClass: KnowledgeMineNavCellModel.classForCoder(), toClass: KnowledgeMineNavCell.classForCoder())

        
        
    }

    override func getTabBar() -> UIViewController{
            
         let tab = BaseTabBarController()
        tab.addChildVC(childVC: KnowledgeHome().v_viewController(), childTitle: "首页", image: UIImage.init(named: "konw_1"), selectedImage:UIImage.init(named: "konw_1"))
         tab.addChildVC(childVC: KnowledgeMembers().v_viewController(), childTitle: "会员", image: UIImage.init(named: "konw_2"), selectedImage: UIImage.init(named: "konw_2"))
         tab.addChildVC(childVC: KnowledgeMessage().v_viewController(), childTitle: "消息", image: UIImage.init(named: "konw_3"), selectedImage: UIImage.init(named: "konw_3"))
         tab.addChildVC(childVC: KnowledgeMine().v_viewController(), childTitle: "我的", image: UIImage.init(named: "konw_4"), selectedImage: UIImage.init(named: "konw_4"))

         return tab
        }
    override func themeColor() -> UIColor{
        return UIColor.init(red: 0/255.0, green: 132/255.0, blue: 225/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.white
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 0/255.0, green: 132/255.0, blue: 225/255.0, alpha: 1.0)
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
