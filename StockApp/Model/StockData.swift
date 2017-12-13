//
//  StockData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct StockObject: Decodable {
    var summary : String
    var title : String
    var ticker : String
    
}

struct StockData: Decodable {
    var data : [StockObject]
}
