//
//  ViewController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/13/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class CompanyListTableViewController: UITableViewController,UISearchBarDelegate {
    
    var usersData = [
        UserData.init(summary: "Citi Research believes Apple stock is still trading at an \"attractive valuation\" discount versus the market", title: "Citi has 5 reasons — including tax reform and global growth — why Apple can keep crushing market", ticker: "AAPL", companyName: "Apple Inc."),
        UserData.init(summary: "U.S. stock futures are mixed this morning, as Wall Street prepares for Janet Yellen’s last Federal Open Market Committee meeting as Board Chair.  Throwing a wrench into the mix this morning was Democrat Doug Jones’ win in the Alabama senate race, defeating Republican candidate Roy Moore.  Investors are pondering what Jones’ win means for the future of the Republican tax plan.", title: "Wednesday’s Vital Data: AT&T Inc (T), Comcast Corporation (CMCSA) and Tesla Inc (TSLA)", ticker: "AAPL", companyName: "Apple Inc"),
        UserData.init(summary: "In light of the possible role Facebook, Twitter, Google, and Amazon unwittingly played in the 2016 presidential election outcome, it would behoove them to make a concerted effort to regulate content regardless of the political winds of the day.", title: "OK Google, What Should The Internet Giants Do About The Midterm Elections", ticker: "GOOGL", companyName: "Gooble Alphabet company")
    ]

    let cellID = "cellID"
    var searchString : String?

    lazy var stockNameSearchBar : UISearchBar = {
        let searchbar = UISearchBar()
        searchbar.autocorrectionType = .default
        searchbar.searchBarStyle = UISearchBarStyle.minimal
        searchbar.isTranslucent = false
        searchbar.sizeToFit()
        searchbar.delegate = self
        searchbar.showsCancelButton = true
        searchbar.tintColor = .white
        searchbar.placeholder = "Search Stock eg.GOOG,AAPL "
        return searchbar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationStyle()
        navigationItem.title = "Stocks"
        tableView.backgroundColor = .darkBlue
        tableView.tableFooterView = UIView()
        tableView.register(CompanyListCell.self, forCellReuseIdentifier: cellID)
        setupSearchBar()
    
       //Service.sharedInstance.fetchStockForSymbol(symbol: "GOOG")
        
    }
    private func setupSearchBar() {
        tableView.tableHeaderView = stockNameSearchBar
        let textField = stockNameSearchBar.value(forKey: "searchField") as? UITextField
        textField?.textColor = .white
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersData.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CompanyListCell
        let userData = usersData[indexPath.row]
        cell.tickerLabel.text = userData.ticker
        cell.companyNameLabel.text = userData.companyName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let layout = UICollectionViewFlowLayout()
        let stockDetailViewController = StockDetailViewController(collectionViewLayout: layout)
        stockDetailViewController.navigationItem.title = usersData[indexPath.row].ticker
        navigationController?.pushViewController(stockDetailViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

