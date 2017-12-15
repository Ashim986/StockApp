//
//  NewsData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct NewsData : Decodable{
    
    var summary : String
    var title : String
    var date : Date
    var urlString : String
    
    init(summary : String, title : String, date : Date, urlString: String) {
        self.summary = summary
        self.title = title
        self.date = date
        self.urlString = urlString
    }
}
