//
//  GraphCellHeaderAndFooter.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class GraphCellHeaderView: CollectionViewBaseCell {
    
    let stockTimeIntervalController : StockTimeInterval = {
        let timeInterval = StockTimeInterval()
        timeInterval.translatesAutoresizingMaskIntoConstraints = false
        return timeInterval
    }()
 
    override func setupViews() {
        super.setupViews()
        backgroundColor = .lightBlue
        textLabel.isHidden = true
         setupTimeIntervalDisplay()
        
    }
    
    private func setupTimeIntervalDisplay() {
        
        addSubview(stockTimeIntervalController)
        
        NSLayoutConstraint.activate([stockTimeIntervalController.leftAnchor.constraint(equalTo: leftAnchor), stockTimeIntervalController.rightAnchor.constraint(equalTo: rightAnchor),stockTimeIntervalController.topAnchor.constraint(equalTo: topAnchor), stockTimeIntervalController.heightAnchor.constraint(equalToConstant: 50)])
        
    }
}
