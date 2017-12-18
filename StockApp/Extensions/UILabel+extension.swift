//
//  UILabel+extension.swift
//  StockApp
//
//  Created by ashim Dahal on 12/16/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

extension UILabel {
    class func textLabel (labelText : String)-> UILabel {
            let label = UILabel()
            label.text = labelText
            label.font = UIFont.systemFont(ofSize: 12)
            label.textColor = .lightGray
            label.textAlignment = .left
            label.backgroundColor = .clear
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
    }
    class func priceLabel (labelText : String)-> UILabel {
        let label = UILabel()
        label.text = labelText
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .white
        label.textAlignment = .right
        label.backgroundColor = .clear
        label.preferredMaxLayoutWidth = 100
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
  
}

extension UIView {
    class func separatorLineView() -> UIView {
        let separatorLineView = UIView()
        separatorLineView.backgroundColor = .lightGray
        separatorLineView.translatesAutoresizingMaskIntoConstraints = false
        return separatorLineView
    }
}
