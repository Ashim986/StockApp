
//
//  CompanyInfoData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct CompanyDescription: Decodable {
    var ticker : String
    var short_description : String
    var name : String
    var stock_exchange : String
}

struct CompanyDescriptionData : Decodable {
    var data : [CompanyDescription]
}
