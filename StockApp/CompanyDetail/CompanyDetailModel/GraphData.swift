//
//  GraphData.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation

struct GraphData : Decodable  {
    var ticker : String
    var percent_change : String
    var close_price : String
    var weekly_price : String
    var daily_price : String
    var monthly_price : String
    var yearly_price : String
}
