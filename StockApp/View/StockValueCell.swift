//
//  StockValueCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class StockValuesCell : UITableViewCell{
  
   
    
    let tickerLabel  : UILabel = {
       let label = UILabel()
        label.text = "STOCK"
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .darkBlue
        return label
    }()
    
    let containerView : UIView = {
       let view = UIView()
        view.backgroundColor = .lightGreen
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let separatorLineView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let stockInfoLabel : UILabel = {
        let label = UILabel()
        label.text = "123.12"
        label.textColor = .darkBlue
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .darkBlue
        setupUI()
    }
    private func setupUI(){
        addSubview(tickerLabel)
        addSubview(separatorLineView)
        addSubview(containerView)
        containerView.addSubview(stockInfoLabel)
        
        setupConstraintForViewComponent()
    }
    
    private func setupConstraintForViewComponent(){
        
        NSLayoutConstraint.activate([tickerLabel.centerYAnchor.constraint(equalTo: centerYAnchor), tickerLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),tickerLabel.widthAnchor.constraint(equalToConstant: 80),tickerLabel.heightAnchor.constraint(equalToConstant: 40)])
        
        NSLayoutConstraint.activate([containerView.centerYAnchor.constraint(equalTo: centerYAnchor), containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),containerView.widthAnchor.constraint(equalToConstant: 100),containerView.heightAnchor.constraint(equalToConstant: 40)])
        
        NSLayoutConstraint.activate([stockInfoLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor), stockInfoLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),stockInfoLabel.widthAnchor.constraint(equalToConstant: 90),stockInfoLabel.heightAnchor.constraint(equalToConstant: 30)])
        
        NSLayoutConstraint.activate([separatorLineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),separatorLineView.topAnchor.constraint(equalTo: bottomAnchor),separatorLineView.rightAnchor.constraint(equalTo: rightAnchor),separatorLineView.heightAnchor.constraint(equalToConstant: 1)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


