//
//  NotesInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class NotesInstructions: Configuration {
    override init() {
           super.init()
           
           Vue.register(aClass: NotesCellModel.classForCoder(), toClass: NotesCell.classForCoder())
           Vue.register(aClass: NotesAssistantCellModel.classForCoder(), toClass: NotesAssistantCell.classForCoder())
           Vue.register(aClass: NotesQuickCellModel.classForCoder(), toClass: NotesQuickCell.classForCoder())
           Vue.register(aClass: NotesMineCellModel.classForCoder(), toClass: NotesMineCell.classForCoder())

           Vue.register(aClass: NotesNavCellModel.classForCoder(), toClass: NotesNavCell.classForCoder())
           Vue.register(aClass: NotesAssistantNavCellModel.classForCoder(), toClass: NotesAssistantNavCell.classForCoder())
           Vue.register(aClass: NotesQuickNavCellModel.classForCoder(), toClass: NotesQuickNavCell.classForCoder())
           Vue.register(aClass: NotesMineNavCellModel.classForCoder(), toClass: NotesMineNavCell.classForCoder())

           
       }
     override func getTabBar() -> UIViewController{
       
        let tab = BaseTabBarController()
        tab.addChildVC(childVC: Notes().v_viewController(), childTitle: "笔记", image: UIImage.init(named: "notes_1"), selectedImage: UIImage.init(named: "notes_1"))
        tab.addChildVC(childVC: NotesAssistant().v_viewController(), childTitle: "助理", image: UIImage.init(named: "notes_2"), selectedImage: UIImage.init(named: "notes_2"))
        tab.addChildVC(childVC: NotesQuick().v_viewController(), childTitle: "快捷", image: UIImage.init(named: "notes_3"), selectedImage: UIImage.init(named: "notes_3"))
        tab.addChildVC(childVC: NotesMine().v_viewController(), childTitle: "我的", image: UIImage.init(named: "notes_4"), selectedImage: UIImage.init(named: "notes_4"))

        return tab
     }
    
    override func themeColor() -> UIColor{

        return UIColor.init(red: 51/255.0, green: 213/255.0, blue: 121/255.0, alpha: 1.0)
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
    }
    override func tabBarBackgroundColor() -> UIColor{
        return UIColor.init(red: 42/255.0, green: 51/255.0, blue: 60/255.0, alpha: 1.0)
    }
    override func tabBarColor() -> UIColor{
        return UIColor.init(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
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

