//
//  File.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit
import Foundation

class CompanyDetailDataSource : DataSource , Decodable, StockDetailViewControllerDelegate{
    
//    let newsData = ["text 1", "text 2", "text 3"]
    let companiesDescriptions : [CompanyDescription] = []
    
    func didFinishSendingData(companyDescription: CompanyDescription) {
        let compDescription = CompanyDescription(ticker: companyDescription.ticker, short_description: companyDescription.short_description, name: companyDescription.name, stock_exchange: companyDescription.stock_exchange)
            var companiesDescription = [CompanyDescription]()
        companiesDescription.append(compDescription)
        
    }
    
    
    override func headerClasses() -> [CollectionViewBaseCell.Type]? {
        return[CompanyDescriptionHeader.self]
    }
    override func cellClasses() -> [CollectionViewBaseCell.Type] {
        return [CompanyDescriptionCell.self]
    }
    override func numberOfSection() -> Int {
        
        return 1
    }
    override func numberOfItems(_ section: Int) -> Int {
        return companiesDescriptions.count
       
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return companiesDescriptions[indexPath.item]
     
    }
}
