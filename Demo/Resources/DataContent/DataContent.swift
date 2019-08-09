//
//  DataContent.swift
//  Demo
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class DataContent: NSObject {

}
struct Icon {
    var name:String?
    var headerImg:UIImage?
    var toUrl:String?
    
}
extension DataContent{
    
    static func getTuiJian() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "微信", headerImg: Image.weixin(), toUrl: "weixin://"))
        array.append(Icon.init(name: "淘宝", headerImg: Image.taobao(), toUrl: "taobao://"))
        array.append(Icon.init(name: "QQ", headerImg: nil, toUrl: "mqq://"))
        array.append(Icon.init(name: "支付宝", headerImg: Image.zhifubao(), toUrl: "alipay://"))
        array.append(Icon.init(name: "微博", headerImg: nil, toUrl: "sinaweibo://"))
        array.append(Icon.init(name: "陌陌", headerImg: nil, toUrl: "momochat://"))
        array.append(Icon.init(name: "QQ音乐", headerImg: nil, toUrl: "QQmusic://"))
        array.append(Icon.init(name: "唱吧", headerImg: nil, toUrl: "changba://"))
        array.append(Icon.init(name: "滴滴出行", headerImg: nil, toUrl: "diditaxi://"))
        array.append(Icon.init(name: "美团", headerImg: nil, toUrl: "imeituan://"))
        array.append(Icon.init(name: "高德地图", headerImg: nil, toUrl: "iosamap://"))
        array.append(Icon.init(name: "百度地图", headerImg: nil, toUrl: "baidumap://"))
        array.append(Icon.init(name: "摩拜单车", headerImg: nil, toUrl: "mobike://scanqr"))
        array.append(Icon.init(name: "ofo", headerImg: nil, toUrl: "ofoapp://"))
        array.append(Icon.init(name: "饿了吗", headerImg: nil, toUrl: "mobike://"))

        return array
    }
}
extension DataContent{
    
    static func getWaiMai() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "天猫", headerImg: nil, toUrl: "tmall://"))
        array.append(Icon.init(name: "淘宝", headerImg: nil, toUrl: "taobao://"))
        array.append(Icon.init(name: "京东", headerImg: nil, toUrl: "openApp.jdMobile://"))
        array.append(Icon.init(name: "唯品会", headerImg: nil, toUrl: "vipshop://"))
        array.append(Icon.init(name: "苏宁易购", headerImg: nil, toUrl: "vipshop://"))
        return array
    }
}
extension DataContent{
    
    static func getShopping() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "知乎", headerImg: nil, toUrl: "zhihu://"))
        array.append(Icon.init(name: "今日头条", headerImg: nil, toUrl: "snssdk141://"))
        array.append(Icon.init(name: "网易新闻", headerImg: nil, toUrl: "newsapp://"))
        array.append(Icon.init(name: "腾讯新闻", headerImg: nil, toUrl: "qqnews://"))
        array.append(Icon.init(name: "网易公开课", headerImg: nil, toUrl: "ntesopen://"))
        array.append(Icon.init(name: "掌阅iReader", headerImg: nil, toUrl: "iReader://"))
        array.append(Icon.init(name: "网易邮箱", headerImg: nil, toUrl: "neteasemail://"))

        
        return array
    }
}
extension DataContent{
    
    static func getJiaoTong() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "腾讯视频", headerImg: nil, toUrl: "tenvideo://"))
        array.append(Icon.init(name: "爱奇艺", headerImg: nil, toUrl: "iphone://"))
        array.append(Icon.init(name: "优酷", headerImg: nil, toUrl: "youku://"))
        array.append(Icon.init(name: "搜狐视频", headerImg: nil, toUrl: "sohuvideo://"))
        array.append(Icon.init(name: "哔哩哔哩", headerImg: nil, toUrl: "bilibili://"))
        array.append(Icon.init(name: "豆瓣", headerImg: nil, toUrl: "doubanradio://"))
        array.append(Icon.init(name: "酷狗音乐", headerImg: nil, toUrl: "kugouURL://"))
        array.append(Icon.init(name: "QQ音乐", headerImg: nil, toUrl: "qqmusic://"))
        array.append(Icon.init(name: "网易云音乐", headerImg: nil, toUrl: "orpheus://"))

        return array
    }
}
extension DataContent{
    
    static func getHotel() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "携程", headerImg: nil, toUrl: "CtripWireless://"))
        array.append(Icon.init(name: "大众点评", headerImg: nil, toUrl: "dianping://"))
        array.append(Icon.init(name: "58同城", headerImg: nil, toUrl: "wbmain://"))
        array.append(Icon.init(name: "艺龙旅行", headerImg: nil, toUrl: "elongIPhone://"))
        array.append(Icon.init(name: "携程无线", headerImg: nil, toUrl: "CtripWireless://"))
        array.append(Icon.init(name: "淘宝旅行", headerImg: nil, toUrl: "taobaotravel://"))

        return array
    }
}
extension DataContent{
    
    static func getTools() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: nil, toUrl: ""))
        return array
    }
}
