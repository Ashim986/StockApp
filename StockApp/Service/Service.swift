//
//  Service.swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import Foundation


struct Service {
    
    static let sharedInstance = Service()
    
    func fetchStockForSymbol(symbol: String) {
        // Base URL
        let userName = "b310dbd73020ccac93acebd57faad517"
        let password = "066438d4e9a484af82b760a313f89ed7"
        let loginString = String(format: "%@:%@", userName, password)
        let loginData = loginString.data(using: String.Encoding.utf8)!
        let base64LoginString = loginData.base64EncodedString()
        
        guard let url = URL(string: "https://api.intrinio.com/news?identifier=GOOGL") else {return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        // Making the request
        URLSession.shared.dataTask(with: request) { data, response, err in
            guard let data = data else {return}
            
            do {
//                let serilizedData = try JSONSerialization.jsonObject(with: data, options: [])
//                print(serilizedData)
                let jsonDecode = JSONDecoder()
                let stockData = try jsonDecode.decode(StockData.self, from: data)
                
                for data in stockData.data{
                    print(data.summary,data.ticker,data.title)
                }
             
            }catch let err {
                print(err)
            }
            }.resume()
    }
}
