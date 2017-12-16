//
//  DefaultCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class DefaultCell : CollectionViewBaseCell {
    let label = UILabel()
    override var dataSourceItem: Any? {
        didSet {
            if let text = dataSourceItem as? String {
                label.text = text
            }else {
                label.text = dataSourceItem.debugDescription
            }
        }
    }
    
    override func setupViews() {
        super.setupViews()
        addSubview(label)
        NSLayoutConstraint.activate([label.topAnchor.constraint(equalTo: topAnchor),label.leftAnchor.constraint(equalTo: leftAnchor, constant : 10),label.rightAnchor.constraint(equalTo: rightAnchor, constant : -10),label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)])
    }
    
}

class DefaultHeaderCell: DefaultCell {
    override var dataSourceItem: Any? {
        didSet {
            if dataSourceItem == nil {
                label.text = "This is your default header"
            }
        }
    }
    override func setupViews() {
        super.setupViews()
        label.text = "Header Cell"
        label.textAlignment = .center
    }
}


class DefaultFooterCell: DefaultCell {
    override var dataSourceItem: Any? {
        didSet {
            if dataSourceItem == nil {
                label.text = "This is your default footer"
            }
        }
    }
    override func setupViews() {
        super.setupViews()
        label.text = "Footer Cell"
        label.textAlignment = .center
    }
}

