//
//  UIKit Extensions.swift
//  CollectionViewCheckmark
//
//  Created by Mihail Șalari on 8/23/16.
//  Copyright © 2016 Andrej Mihajlov. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        switch arc4random() % 5 {
        case 0: return UIColor.green
        case 0: return UIColor.green
        case 1: return UIColor.blue
        case 2: return UIColor.orange
        case 3: return UIColor.red
        case 4: return UIColor.purple
        default: return UIColor.black
        }
    }
}
