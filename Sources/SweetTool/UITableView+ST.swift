//
//  UITableView+ST.swift
//  sweetTool
//
//  Created by rosua le on 2023/9/27.
//  Copyright © 2023 lerosua. All rights reserved.
//

import UIKit

public extension UITableView {
    func st_registerNib(named:String){
        self.register(UINib(nibName: named, bundle: nil),forCellReuseIdentifier: named)
    }
}
