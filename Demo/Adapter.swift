//
//  Adapter.swift
//  Demo
//
//  Created by apple on 2019/11/13.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class Adapter {

    static func topBar()-> CGFloat{
    
        let top = phoneH(iphone5: 95, iphone6: 95, iphoneS: 95, iphoneX: 95+24)
        return top
    
    }
    
    static func width()-> CGFloat{
        
        return UIScreen.main.bounds.size.width
        
    }
    static func heigt()-> CGFloat{
        
        return UIScreen.main.bounds.size.height
        
    }
    static func top()-> CGFloat{
        
        let top = phoneH(iphone5: 64, iphone6: 64, iphoneS: 64, iphoneX: 64+24)

        return top
        
    }
    static func topNavigation()-> CGFloat{
        
        let top = phoneH(iphone5: 44, iphone6: 44, iphoneS: 44, iphoneX: 44+24)

        return top
        
    }
    static func topStatus()-> CGFloat{
        

        return 20
        
    }
    static func bottom()-> CGFloat{
        
        let top = phoneH(iphone5: 49, iphone6: 49, iphoneS: 49, iphoneX: 49+24)

        return top
        
    }
    
    
    static func phoneH(iphone5:CGFloat,iphone6:CGFloat,iphoneS:CGFloat,iphoneX:CGFloat)-> CGFloat{
        
        let h = UIScreen.main.bounds.size.height
        
        if h == 568 {
            return iphone5

        }else if h == 667 {
            return iphone6

        }else if h == 736 {
            return iphoneS

        }else if h == 812 {
            return iphoneX

        }else {
            return iphoneX
        }
    }
    
    static func getTopForWindow(view:UIView)-> CGFloat{
        
        let window = UIApplication.shared.keyWindow
        let rect = window?.convert(view.bounds, from: view)
        if let top = rect?.origin.y{
            
            if let h = rect?.size.height{
                return top + h
            }
        }
        return 0
        
    }
    
    
    
   
    
}
