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
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: "weixin://"))
        array.append(Icon.init(name: "淘宝", headerImg: UIImage.init(named: "taobao"), toUrl: "taobao://"))
        array.append(Icon.init(name: "QQ", headerImg: UIImage.init(named: "mqq"), toUrl: "mqq://"))
        array.append(Icon.init(name: "支付宝", headerImg: UIImage.init(named: "alipay"), toUrl: "alipay://"))
        array.append(Icon.init(name: "微博", headerImg: UIImage.init(named: "sinaweibo"), toUrl: "sinaweibo://"))
        array.append(Icon.init(name: "今日头条", headerImg: UIImage.init(named: "snssdk141"), toUrl: "snssdk141://"))
        array.append(Icon.init(name: "爱奇艺", headerImg: UIImage.init(named: "aiqiyi"), toUrl: "iphone://"))
        array.append(Icon.init(name: "滴滴出行", headerImg: UIImage.init(named: "diditaxi"), toUrl: "diditaxi://"))
        array.append(Icon.init(name: "美团", headerImg: UIImage.init(named: "imeituan"), toUrl: "imeituan://"))
        array.append(Icon.init(name: "高德地图", headerImg: UIImage.init(named: "iosamap"), toUrl: "iosamap://"))
        array.append(Icon.init(name: "摩拜单车", headerImg: UIImage.init(named: "mobike"), toUrl: "mobike://scanqr"))

        
        
        return array
    }
}
extension DataContent{
    
    static func getWaiMai() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "天猫", headerImg: UIImage.init(named: "tmall"), toUrl: "tmall://"))
        array.append(Icon.init(name: "淘宝", headerImg: UIImage.init(named: "taobao"), toUrl: "taobao://"))
        array.append(Icon.init(name: "京东", headerImg: UIImage.init(named: "openApp.jdMobile"), toUrl: "openApp.jdMobile://"))
        array.append(Icon.init(name: "唯品会", headerImg: UIImage.init(named: "vipshop"), toUrl: "vipshop://"))
        array.append(Icon.init(name: "苏宁易购", headerImg: UIImage.init(named: "suning"), toUrl: "suning://"))
        array.append(Icon.init(name: "人人网", headerImg: UIImage.init(named: "renrenios"), toUrl: "renrenios://"))

        return array
    }
}
extension DataContent{
    
    static func getShopping() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "知乎", headerImg: UIImage.init(named: "zhihu"), toUrl: "zhihu://"))
        array.append(Icon.init(name: "今日头条", headerImg: UIImage.init(named: "snssdk141"), toUrl: "snssdk141://"))
        array.append(Icon.init(name: "网易新闻", headerImg: UIImage.init(named: "newsapp"), toUrl: "newsapp://"))
        array.append(Icon.init(name: "腾讯新闻", headerImg: UIImage.init(named: "qqnews"), toUrl: "qqnews://"))
        array.append(Icon.init(name: "掌阅iReader", headerImg: UIImage.init(named: "iReader"), toUrl: "iReader://"))
        array.append(Icon.init(name: "网易邮箱", headerImg: UIImage.init(named: "neteasemail"), toUrl: "neteasemail://"))

        
        return array
    }
}
extension DataContent{
    
    static func getJiaoTong() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "腾讯视频", headerImg: UIImage.init(named: "tenvideo"), toUrl: "tenvideo://"))
        array.append(Icon.init(name: "爱奇艺", headerImg: UIImage.init(named: "aiqiyi"), toUrl: "iphone://"))
        array.append(Icon.init(name: "优酷", headerImg: UIImage.init(named: "youku"), toUrl: "youku://"))
        array.append(Icon.init(name: "搜狐视频", headerImg: UIImage.init(named: "sohuvideo"), toUrl: "sohuvideo://"))
        array.append(Icon.init(name: "哔哩哔哩", headerImg: UIImage.init(named: "bilibili"), toUrl: "bilibili://"))
        array.append(Icon.init(name: "豆瓣", headerImg: UIImage.init(named: "doubanradio"), toUrl: "doubanradio://"))
        array.append(Icon.init(name: "酷狗音乐", headerImg: UIImage.init(named: "kugouURL"), toUrl: "kugouURL://"))
        array.append(Icon.init(name: "QQ音乐", headerImg: UIImage.init(named: "qqmusic"), toUrl: "qqmusic://"))
        array.append(Icon.init(name: "网易云音乐", headerImg: UIImage.init(named: "orpheus"), toUrl: "orpheus://"))
        array.append(Icon.init(name: "QQ音乐", headerImg: UIImage.init(named: "qqmusic"), toUrl: "qqmusic://"))
        array.append(Icon.init(name: "唱吧", headerImg: UIImage.init(named: "changba"), toUrl: "changba://"))


        return array
    }
}
extension DataContent{
    
    static func getHotel() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "携程", headerImg: UIImage.init(named: "CtripWireless"), toUrl: "CtripWireless://"))
        array.append(Icon.init(name: "大众点评", headerImg: UIImage.init(named: "dianping"), toUrl: "dianping://"))
        array.append(Icon.init(name: "58同城", headerImg: UIImage.init(named: "wbmain"), toUrl: "wbmain://"))
        array.append(Icon.init(name: "携程无线", headerImg: UIImage.init(named: "CtripWireless"), toUrl: "CtripWireless://"))
        array.append(Icon.init(name: "陌陌", headerImg: UIImage.init(named: "momochat"), toUrl: "momochat://"))
        array.append(Icon.init(name: "百度地图", headerImg: UIImage.init(named: "baidumap"), toUrl: "baidumap://"))
        array.append(Icon.init(name: "ofo", headerImg: UIImage.init(named: "ofoapp"), toUrl: "ofoapp://"))

        
        return array
    }
}
extension DataContent{
    
    static func getTools() -> [Icon]{
        var array = [Icon]()
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        array.append(Icon.init(name: "微信", headerImg: UIImage.init(named: "weixin"), toUrl: ""))
        return array
    }
}
