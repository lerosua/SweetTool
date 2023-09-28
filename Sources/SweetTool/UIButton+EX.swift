//
//  UIButton+EX.swift
//  SubsTender
//
//  Created by rosua le on 2023/9/14.
//

import UIKit

public extension UIButton {
    
    //获取一个圆形背景，使用imageName图标的按钮
    class func getCircleButton(imageName:String,bgColor:UIColor,width:CGFloat)->UIButton{
        let circleBtn = UIButton(frame: CGRect(x: 0, y: 0, width: width, height: width))
        circleBtn.layer.cornerRadius = width/2
        circleBtn.layer.masksToBounds = true
        let bgImage = UIImage(color: bgColor)
        circleBtn.setBackgroundImage(bgImage, for: .normal)
        circleBtn.setImage(UIImage(named: imageName)!.withRenderingMode(.alwaysOriginal), for: .normal)
        return circleBtn
    }
    
}
