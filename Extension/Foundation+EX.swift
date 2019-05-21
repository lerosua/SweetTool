//
//  Foundation+EX.swift
//  winwin
//
//  Created by lerosua on 5/21/19.
//  Copyright © 2019 lerosua. All rights reserved.
//

import UIKit

extension NSDate{
    
   public func humanFormat() -> String {
        
        if self.timeIntervalSinceNow > -60 {
            return "刚刚"
        }else if self.timeIntervalSinceNow > -3600 {
            let minute:Int  = Int(abs(ceil(self.timeIntervalSinceNow/60)))
            return "\(minute)分钟前"
        }else if self.timeIntervalSinceNow > -86400 {
            let dayFormat =  DateFormatter()
            dayFormat.dateFormat = "dd"
            
            let hourFormat = DateFormatter()
            hourFormat.dateFormat = "HH:mm"
            
            let yesterday = NSDate(timeIntervalSinceNow: -86400)
            if dayFormat.string(from: self as Date) == dayFormat.string(from: yesterday as Date) {
                return "昨天 \(hourFormat.string(from: self as Date))";
            }else{
                return "今天 \(hourFormat.string(from: self as Date))";
            }
        }else {
            let format =  DateFormatter()
            format.dateFormat = "MM-dd HH:mm"
            return format.string(from: self as Date)
        }
        
    }
    
}
