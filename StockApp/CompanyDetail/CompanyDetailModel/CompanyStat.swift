//
//  CompanyStockData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct CompanyStat : Decodable{
    var open : String
    var high : String
    var low : String
    var week_high_52 : String
    var week_low_52 : String
    var volume : String
    var marketCapital : String
    var ratio_PE : String
}
 
