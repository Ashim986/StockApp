//
//  UIColors+Extension .swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init (r : CGFloat, g : CGFloat , b : CGFloat){
        self.init(red : r/255, green : g/255 , blue : b/255 , alpha : 1)
    }
    
    static let lightRed = UIColor(r: 247, g: 66, b: 82)
    static let tealColor = UIColor(r: 48, g: 164, b: 182)
    static let darkBlue = UIColor(r: 9, g: 45, b: 64)
    static let lightBlue = UIColor(r: 219, g: 235, b: 243)
    static let darkGreen = UIColor(r: 110, g: 195, b: 101)
    static let lightGreen = UIColor(r: 144, g: 238, b: 144)
    static let extraDarkGreen = UIColor(r: 0, g: 158, b: 96)
    static let orangeColor = UIColor(r: 247, g: 94, b: 37)
}

