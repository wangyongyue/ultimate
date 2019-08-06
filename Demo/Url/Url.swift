//
//  Url.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
protocol HttpProtocol {
    var url:String{get}
    func getPOSTBody() -> [String:Any]
    func getIndex(vId:String,_ index:Int?)
    func getModel(vId:String,_ data:Any?) -> [VueData]
}
protocol ViewLoadProtocol {
    func viewLoad()
}
protocol GetViewProtocol {
    func getView() -> ViewLoadProtocol
}
extension UIViewController{
    
   
    static func toHome(){
        let app = UIApplication.shared.delegate as! AppDelegate
        let tab = BaseTabBarController()
        app.window?.rootViewController = tab;
        app.window?.makeKeyAndVisible();
    
    }

}


//VUE_ID
let ARRAYID = "ArrayID"
let INDEXID = "IndexID"
let TABID = "TabID"
let TABINDEXID = "TabIndexID"
let NAVBACKID = "NavBackID"

//http接口
let defaultUrl = "/default"
let test1Url = "/test1"
let test2Url = "/test1"
let test3Url = "/test1"
