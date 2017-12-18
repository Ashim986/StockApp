//
//  CollectionViewBaseController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

open class CollectionViewBaseController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    open var dataSource : DataSource? {
        didSet {
            if let cellClasses = dataSource?.cellClasses() {
                for cellClass in cellClasses {
                    collectionView?.register(cellClass, forCellWithReuseIdentifier: NSStringFromClass(cellClass))
                }
            }
            if let cellHeaderClasses = dataSource?.headerClasses() {
                for cellHeaderClass in cellHeaderClasses {
                    collectionView?.register(cellHeaderClass, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: NSStringFromClass(cellHeaderClass))
                }
            }
            if let cellFooterClasses = dataSource?.footerClasses() {
                for footerClass in cellFooterClasses {
                    collectionView?.register(footerClass, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: NSStringFromClass(footerClass))
                }
            }
        }
    }
    
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
        view.layoutIfNeeded()
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
    
    
    open override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let resuableView : CollectionViewBaseCell
        
        
        if kind == UICollectionElementKindSectionHeader {
            if let classes = dataSource?.headerClasses(), classes.count > indexPath.section {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: NSStringFromClass(classes[indexPath.section]), for: indexPath) as! CollectionViewBaseCell
            }else if let classes = dataSource?.headerClasses()?.first {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: NSStringFromClass(classes), for: indexPath) as! CollectionViewBaseCell
            }else {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: defaultHeaderId, for: indexPath) as! CollectionViewBaseCell
            }
            resuableView.dataSourceItem = dataSource?.headerItem(indexPath.item)
            
        }else{
            if let classes = dataSource?.footerClasses(), classes.count > indexPath.section {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: NSStringFromClass(classes[indexPath.section]), for: indexPath) as! CollectionViewBaseCell
            }else if let classes = dataSource?.footerClasses()?.first {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: NSStringFromClass(classes), for: indexPath) as! CollectionViewBaseCell
            }else {
                resuableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: defaultFooterId, for: indexPath) as! CollectionViewBaseCell
            }
            resuableView.dataSourceItem = dataSource?.footerItem(indexPath.section)
        }
        resuableView.controller = self
        return resuableView
    }
    
    open func getRefreshControl() -> UIRefreshControl {
        let refreshcontrol = UIRefreshControl()
        refreshcontrol.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        return refreshcontrol
    }
    
    @objc open func handleRefresh(){
    
    }
}
