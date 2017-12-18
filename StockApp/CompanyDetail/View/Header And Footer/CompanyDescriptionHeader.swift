//
//  CompanyDescriptionHeader.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit


class CompanyDescriptionHeader: CollectionViewBaseCell {
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        collectioViewCellTextLabel.isHidden = false
        collectioViewCellTextLabel.text = "About"
    }
}


