//
//  NewsData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct NewsData : Decodable {
    
    var title : String
    var publication_date : Date
    var url : String
    
    init(title : String, publication_date : Date, url: String) {
        self.title = title
        self.publication_date = publication_date
        self.url = url
    }
}
