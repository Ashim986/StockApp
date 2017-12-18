//
//  GraphViewCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class GraphViewCell: CollectionViewBaseCell {
    
    let currentPriceLabel : UILabel = {
        let label = UILabel()
        label.text = "1234.23"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = .white
        label.preferredMaxLayoutWidth = 150
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let currencySymbol: UILabel = {
        let label = UILabel()
        label.text = "$"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .white
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
  
    override func setupViews() {
        super.setupViews()
        self.backgroundColor = .darkBlue
        separatorLineView.isHidden = false
        addSubview(currentPriceLabel)
        addSubview(currencySymbol)
        addViewConstraint()
       
    }
    
    private func addViewConstraint(){
        NSLayoutConstraint.activate([currentPriceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30), currentPriceLabel.centerXAnchor.constraint(equalTo: centerXAnchor), currentPriceLabel.heightAnchor.constraint(equalToConstant: 60)])
        NSLayoutConstraint.activate([currencySymbol.centerYAnchor.constraint(equalTo: currentPriceLabel.centerYAnchor, constant : 5), currencySymbol.rightAnchor.constraint(equalTo: currentPriceLabel.leftAnchor, constant: 5), currencySymbol.widthAnchor.constraint(equalToConstant: 30),currencySymbol.heightAnchor.constraint(equalToConstant: 30)])
        
    }
}

