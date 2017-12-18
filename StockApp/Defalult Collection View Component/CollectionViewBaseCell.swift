//
//  CollectionViewBaseCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

open class CollectionViewBaseCell : UICollectionViewCell {
    open var dataSourceItem : Any?
    
    open weak var controller : CollectionViewBaseController?
    
    open let separatorLineView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()
    
    open let collectioViewCellTextLabel : UILabel = {
        let label = UILabel()
        label.text = "News"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    open func setupViews() {
        clipsToBounds = true
        addSubview(separatorLineView)
        addSubview(collectioViewCellTextLabel)
        NSLayoutConstraint.activate([separatorLineView.leftAnchor.constraint(equalTo: leftAnchor), separatorLineView.bottomAnchor.constraint(equalTo: bottomAnchor),separatorLineView.rightAnchor.constraint(equalTo: rightAnchor),separatorLineView.heightAnchor.constraint(equalToConstant: 1)])
        NSLayoutConstraint.activate([collectioViewCellTextLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant : -10),collectioViewCellTextLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),collectioViewCellTextLabel.rightAnchor.constraint(equalTo: rightAnchor),collectioViewCellTextLabel.heightAnchor.constraint(equalToConstant: 34)])
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
