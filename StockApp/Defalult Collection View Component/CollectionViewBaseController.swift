//
//  CollectionViewBaseController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

open class CollectionViewBaseController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    open var dataSource : DataSource?
    
    open let activityIndicatorView : UIActivityIndicatorView = {
       let view = UIActivityIndicatorView(activityIndicatorStyle: .white)
        view.hidesWhenStopped = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.color = .black
        return view
    }()
    
    public override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let defaultCellId = "defaultCellId"
    let defaultFooterId = "defaultFooterId"
    let defaultHeaderId = "defaultHeaderId"
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = .white
        
        view.addSubview(activityIndicatorView)
        
        activityIndicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activityIndicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        collectionView?.register(DefaultCell.self, forCellWithReuseIdentifier: defaultCellId)
        collectionView?.register(DefaultHeaderCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: defaultHeaderId)
        collectionView?.register(DefaultFooterCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: defaultFooterId)
        
    }
    
    
    override open func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource?.numberOfSection() ?? 0
    }
    
    override open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource?.numberOfItems(section) ?? 0
    }
    
    // override this method to modify size for the collection view.
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    open override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewBaseCell
        
        if let cellIdFromClass = dataSource?.cellClass(indexPath){
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cellIdFromClass), for: indexPath) as! CollectionViewBaseCell
        }else if let cellClasses = dataSource?.cellClasses(), cellClasses.count > indexPath.section {
            let cellIDFromClass = cellClasses[indexPath.section]
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cellIDFromClass), for: indexPath) as! CollectionViewBaseCell
        }else if let cellIDFromClass = dataSource?.cellClasses().first {
           cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cellIDFromClass), for: indexPath) as! CollectionViewBaseCell
        }else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: defaultCellId, for: indexPath)as! CollectionViewBaseCell
        }
        
        cell.controller = self
        cell.dataSourceItem = dataSource?.item(indexPath)
        
        return cell
    }
    
}
