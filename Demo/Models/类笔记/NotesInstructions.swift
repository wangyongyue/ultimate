//
//  NotesInstructions.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class NotesInstructions: Configuration {

     override func getTabBar() -> BaseTabBarController{
       
        let tab = BaseTabBarController()
        tab.addChildVC(childVC: Notes().v_viewController(), childTitle: "笔记", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: NotesAssistant().v_viewController(), childTitle: "助理", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: NotesQuick().v_viewController(), childTitle: "快捷", image: Image.home(), selectedImage: Image.home_sel())
        tab.addChildVC(childVC: NotesMine().v_viewController(), childTitle: "我的", image: Image.home(), selectedImage: Image.home_sel())

        return tab
     }
          
        
}

