//
//  UINavigationBar+EX.swift
//  SubsTender
//
//  Created by rosua le on 2023/9/20.
//

import UIKit
let _STScreenWidth:CGFloat =  UIScreen.main.bounds.size.width

extension UINavigationBar {
    
    //设置navbar的纯色背景，删除底部的线
    func setupPureColor(color:UIColor){
        self.backgroundColor = color
        self.barTintColor = color
        self.isTranslucent = false
        self.shadowImage = UIImage()
        self.setBackgroundImage(UIImage(), for: .bottom, barMetrics: .default)
        fixTopColor(color: color)
        self.layoutIfNeeded()
    }
    
    func fixTopColor(color:UIColor){
        let navBarBgView = UIView(frame: CGRect(x: 0, y: -64, width: _STScreenWidth, height: 64))
        navBarBgView.backgroundColor = color
        self.addSubview(navBarBgView)
        self.sendSubviewToBack(navBarBgView)
    }
    
}
