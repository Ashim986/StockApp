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
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    open func setupViews() {
        clipsToBounds = true
        addSubview(separatorLineView)
        NSLayoutConstraint.activate([separatorLineView.leftAnchor.constraint(equalTo: leftAnchor), separatorLineView.bottomAnchor.constraint(equalTo: bottomAnchor),separatorLineView.rightAnchor.constraint(equalTo: rightAnchor),separatorLineView.heightAnchor.constraint(equalToConstant: 0.75)])
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
