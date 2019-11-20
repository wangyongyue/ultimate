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
   
}
protocol ViewLoadProtocol {
    func viewLoad()
}
protocol GetViewProtocol {
    func getView() -> ViewLoadProtocol
}


//VUE_ID
let STATUSID = "StatusID"
let RELOADDataID = "ReloadDataID"

let NAVARRAYID = "NavArrayID"
let NAVINDEXID = "NavIndexID"

let ARRAYID = "ArrayID"
let INDEXID = "IndexID"

let TABID = "TabID"
let TABINDEXID = "TabIndexID"
let NAVBACKID = "NavBackID"

//http接口
let defaultUrl = "/default"
