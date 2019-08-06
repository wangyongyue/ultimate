//
//  HttpFactory.swift
//  Demo
//
//  Created by apple on 2019/8/5.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
let URL_ID = "url_id"


class HttpFactory: NSObject {

    static func getUrl() -> String{
        let url_id = Router.v_params()?[URL_ID] as? String
        if let url = url_id{
          return url
        }
        return defaultUrl
    }

    static func getHttpModel() -> HttpProtocol?{
        switch getUrl(){
        case defaultUrl:return DefaultHttp()
        case test1Url:return TestHttp()
        case defaultUrl:return DefaultHttp()
            
        default:return DefaultHttp()
        }
    }
    
}
