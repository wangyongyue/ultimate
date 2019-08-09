//
//  DefaultHttp.swift
//  Demo
//
//  Created by apple on 2019/8/5.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class DefaultHttp: HttpProtocol{
    
    var url:String = defaultUrl
    var userId:Int?
    var token:String?
    func getPOSTBody() -> [String:Any]{
        var body = [String:Any]()
        body["userId"] = userId
        body["token"] = token
        return body
    }
    
   
    
}

