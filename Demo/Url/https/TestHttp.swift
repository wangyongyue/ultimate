//
//  TestHttp.swift
//  Demo
//
//  Created by apple on 2019/7/30.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class TestHttp:HttpProtocol{
    
    var url:String = HttpFactory.getUrl()
    var body = [String:Any]()
    func getPOSTBody() -> [String:Any]{
        
        body["userId"] = ""
        body["token"] = ""
        return body
    }
    
    private var array = [VueData]()
    func getIndex(vId:String,_ index:Int?){
        
        var dic = [String:Any]()
        dic["id"] = 10
        dic[URL_ID] = test1Url
        Router.push(Home(), dic, nil)
        
    }
    func getModel(vId:String,_ data:Any?) -> [VueData]{
        
        for i in 1...12{
            let m = TabHeaderCellModel()
            m.name = "home"
            self.array.append(m)
        }
        return self.array
    }
    
    
}
