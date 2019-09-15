//
//  TabViewController.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
import SnapKit
class TabViewController: UIViewController,UICollectionViewDelegate {

    var m:Vue?
    var tab:CCollection?
    var table:CCollection?
    var line = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.view.backgroundColor = bgColor

        let tabLayout = UICollectionViewFlowLayout()
        tabLayout.itemSize = CGSize.init(width: WIDTH/5, height: 50)
        tabLayout.scrollDirection = .horizontal
        tabLayout.minimumLineSpacing = 0
        tabLayout.minimumInteritemSpacing = 0
        let tab = CCollection.init(frame: CGRect.zero, collectionViewLayout: tabLayout)
        self.view.addSubview(tab)
        tab.backgroundColor = themeColor
        tab.snp.makeConstraints { (make) in
            
            make.top.equalTo(TOP)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(50)
            
        }
        tab.v_array(vId: TABID, vue: m)
        tab.v_index(vId: TABINDEXID, vue: m)
        tab.v_didSelect { (index) in
            
            self.table?.setContentOffset(CGPoint.init(x: WIDTH * CGFloat(index), y: 0), animated: true)
            UIView.animate(withDuration: 0.3) {
                
                var frame = self.line.frame
                frame.origin.x = WIDTH/5 * CGFloat(index)
                self.line.frame = frame
            }
        }
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: WIDTH, height: HEIGHT - TOP - 50)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        let table = CCollection.init(frame: CGRect.zero, collectionViewLayout: layout)
        self.view.addSubview(table)
        table.isPagingEnabled = true
        table.backgroundColor = UIColor.clear
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(TOP + 50)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        table.v_array(vId: ARRAYID, vue: m)
        table.delegate = self
        m?.v_start()
        
        self.view.addSubview(self.line)
        self.line.backgroundColor = UIColor.white
        self.line.frame = CGRect.init(x: 0, y: TOP + 50 - 2, width: WIDTH/5, height: 2)
        
        self.tab = tab
        self.table = table
        
        
        
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let index = scrollView.contentOffset.x / WIDTH
        UIView.animate(withDuration: 0.3) {
            
            var frame = self.line.frame
            frame.origin.x = WIDTH/5 * index
            self.line.frame = frame
        }
        
        self.m?.v_index(vId: TABINDEXID, index: Int(index))
    }

}
