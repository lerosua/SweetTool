//
//  Tools.swift
//  winwin
//
//  Created by lerosua on 5/21/19.
//  Copyright © 2019 lerosua. All rights reserved.
//

import UIKit

class Tools: NSObject {
    static func isIphoneX()->Bool {
        guard #available(iOS 11.0, *) else { return false }
        return UIApplication.shared.windows[0].safeAreaInsets != UIEdgeInsets.zero
    }
}
