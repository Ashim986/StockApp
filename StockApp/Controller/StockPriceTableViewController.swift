//
//  ViewController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class StockPriceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationStyle()
        view.backgroundColor = .red
        
       //Service.sharedInstance.fetchStockForSymbol(symbol: "GOOG")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

