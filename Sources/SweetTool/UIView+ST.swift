//
//  UIView+ST.swift
//  sweetTool
//
//  Created by rosua le on 2023/9/22.
//  Copyright © 2023 lerosua. All rights reserved.
//

import UIKit

public extension UIView {
    /** Loads instance from nib with the same name. */
    func st_loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }

    /** Loads instance from nib with the nibName. */
      func st_loadNib(nibName:String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    func findViewController() -> UIViewController? {
        if let nextResponder = self.next as? UIViewController {
            return nextResponder
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.findViewController()
        } else {
            return nil
        }
    }
    
    //设置底下两边的圆角
    func setupBottomCorner(_ radius:CGFloat){
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    //设置顶上的两边圆角
    func setupTopCorner(_ radius:CGFloat){
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    //设置四个角都圆角
    func setupCorner(_ radius:CGFloat){
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

