//
//  DataSource.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

open class DataSource : NSObject {
    public var objects : [Any]?
    
    /// class used to render each section
    open func cellClasses() -> [CollectionViewBaseCell.Type]{
        return []
    }
    
    /// class for rendering view per row , override this method to provide the proper cell type that should be rendered
    open func cellClass(_ indexPath : IndexPath)-> CollectionViewBaseCell.Type? {
        return nil
    }
    
    open func headerClasses() -> [CollectionViewBaseCell.Type]? {
        return []
    }
    
    
    open func numberOfItems(_ section : Int) -> Int {
        return objects?.count ?? 0
    }
    
    open func numberOfSection() -> Int{
        return 1
    }
    
    /// For each row in list , override this to provide it with a specific item. Access this in CollectionViewBaseCell byy overriding datasourceItem.
    open func item(_ indexPath : IndexPath)-> Any? {
        return objects?[indexPath.item]
    }
    
    ///If your header need a special item, return it here
    open func headerItem(_ section : Int) -> Any? {
        return nil
    }
    
    
    
}
