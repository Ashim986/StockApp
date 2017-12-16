//
//  NewsCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class NewsCell : CollectionViewBaseCell {
    
    let newsTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "News title should be very large to accomodate all news type."
        label.textColor = .white
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 18)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let newsDateLabel : UILabel = {
        let label = UILabel()
        label.text = "Dec 11, 2017"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .lightGray
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(newsTitleLabel)
        addSubview(newsDateLabel)
        separatorLineView.isHidden = false
        setupViewConstraint()
    }
    private func setupViewConstraint(){
        NSLayoutConstraint.activate([newsTitleLabel.topAnchor.constraint(equalTo: topAnchor,constant : 2), newsTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),newsTitleLabel.heightAnchor.constraint(equalToConstant: 52),newsTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10)])
        
        NSLayoutConstraint.activate([newsDateLabel.topAnchor.constraint(equalTo: newsTitleLabel.bottomAnchor,constant : 2), newsDateLabel.leftAnchor.constraint(equalTo: newsTitleLabel.leftAnchor),newsDateLabel.heightAnchor.constraint(equalToConstant: 12),newsDateLabel.widthAnchor.constraint(equalToConstant: 80)])
    }
    
}
