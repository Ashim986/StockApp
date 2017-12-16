//
//  NewsCellHeaderAndFooter.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class NewsCellHeaderView: CollectionViewBaseCell {
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        textLabel.isHidden = false
        textLabel.text = "News"
    }
}


