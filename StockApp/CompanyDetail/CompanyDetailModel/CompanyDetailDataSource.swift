//
//  File.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class CompanyDetailDataSource : DataSource {
    
    let newsData = ["text 1", "text 2", "text 3"]
    let companiesDescriptions = ["value 1", "value 2"]
    
    
    override func headerClasses() -> [CollectionViewBaseCell.Type]? {
        return[GraphCellHeaderView.self,NewsCellHeaderView.self,CompanyStatHeader.self , CompanyDescriptionHeader.self]
    }
    
    override func cellClasses() -> [CollectionViewBaseCell.Type] {
        return [GraphViewCell.self, NewsCell.self, CompanyStatCell.self,CompanyDescriptionCell.self]
    }
    
    
    override func numberOfSection() -> Int {
        return 4
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return newsData.count
        }else{
            return 1
        }
    }
    
}
