//
//  VideoVIP.swift
//  Demo
//
//  Created by wangyongyue on 2019/11/14.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class VideoVIP:Vue,GetViewProtocol{
    
    private var http = DefaultHttp()
    func getView() -> ViewLoadProtocol {
        let v = TabView.init(self,6)
        return v
    }
    
    override func v_start() {
              dealTab()
              dealContent()
              
    }
      
      private func dealTab(){
          
          let titles = ["精选","俱乐部","电影","电视剧","综艺","动漫"]
          var array = [VueData]()
          for value in titles {
              let m = TabHeaderCellModel()
              m.name = value
              array.append(m)
          }
          
          self.v_array(vId: TABID) { () -> Array<VueData>? in
              
              return array
              
          }
                         
          
      }
      private func dealContent(){
          
          var views = [GetViewProtocol]()
          views.append(VVIPSelection())
          views.append(VVIPClub())
          views.append(VVIPFilm())
          views.append(VVIPTV())
          views.append(VVIPVariety())
          views.append(VVIPAnimation())

          var contentArray = [VueData]()
          for (index,value) in views.enumerated(){
              let m = TabContentCellModel()
              m.view = value.getView()
              if index == 0{
                  m.view?.viewLoad()
                  m.isL = true
                  
              }
              contentArray.append(m)
          }
          
          self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
              
              return contentArray
              
          }
          
          self.v_index(vId: TABINDEXID) { (index) in
              
              let v = contentArray[index] as! TabContentCellModel
              if v.isL == false{
                  v.view?.viewLoad()
                  v.isL = true
                  
              }
              
          }
      }
    
     
    
    
    
}
