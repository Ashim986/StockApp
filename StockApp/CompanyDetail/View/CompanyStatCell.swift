//
//  CompanyStatCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class CompanyStatCell: CollectionViewBaseCell {
    
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func setupViews() {
        super.setupViews()
        self.backgroundColor = .clear
        
        setupViewsAndConstraint()
    }
    
    private func setupViewsAndConstraint(){
        
        let stockPriceOpenLabelTitle = UILabel.textLabel(labelText: "OPEN")
        let openPriceLabel = UILabel.priceLabel(labelText: "123456.12")
        let separatorLine1 = UIView.separatorLineView()
        
        let stockPriceHighLabel = UILabel.textLabel(labelText: "HIGH")
        let highPriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine2 = UIView.separatorLineView()
        
        let stockPriceLowLabel = UILabel.textLabel(labelText: "LOW")
        let lowPriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine3 = UIView.separatorLineView()

        let stockPrice_52_WeekLow = UILabel.textLabel(labelText: "52 WK LOW")
        let weekLow_52_PriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine4 = UIView.separatorLineView()

        let stockPrice_52_WeekHigh = UILabel.textLabel(labelText: "52 WK HIGH")
        let weekHigh_52_PriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine5 = UIView.separatorLineView()

        let stockPriceVolumeLabel = UILabel.textLabel(labelText: "VOLUME")
        let volumePriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine6 = UIView.separatorLineView()

        let stockPriceMarketCapitalLabel = UILabel.textLabel(labelText: "MKT CAP")
        let marketCapitalPriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine7 = UIView.separatorLineView()

        let stockPricePERatioLabel = UILabel.textLabel(labelText: "P/E RATIO")
        let ratioPEPriceLabel = UILabel.priceLabel(labelText: "123.12")
        let separatorLine8 = UIView.separatorLineView()
        

        addSubview(containerView)
        addSubview(stockPriceOpenLabelTitle)
        addSubview(openPriceLabel)
        addSubview(stockPriceHighLabel)
        addSubview(highPriceLabel)
        addSubview(stockPriceLowLabel)
        addSubview(lowPriceLabel)
        addSubview(stockPrice_52_WeekLow)
        addSubview(weekLow_52_PriceLabel)
        addSubview(stockPrice_52_WeekHigh)
        addSubview(weekHigh_52_PriceLabel)
        addSubview(stockPriceVolumeLabel)
        addSubview(volumePriceLabel)
        addSubview(stockPriceMarketCapitalLabel)
        addSubview(marketCapitalPriceLabel)
        addSubview(stockPricePERatioLabel)
        addSubview(ratioPEPriceLabel)
        addSubview(separatorLine1)
        addSubview(separatorLine2)
        addSubview(separatorLine3)
        addSubview(separatorLine4)
        addSubview(separatorLine5)
        addSubview(separatorLine6)
        addSubview(separatorLine7)
        addSubview(separatorLine8)

        NSLayoutConstraint.activate([containerView.topAnchor.constraint(equalTo: topAnchor, constant: 10), containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10), containerView.widthAnchor.constraint(equalToConstant : 80), containerView.heightAnchor.constraint(equalToConstant : 20)])
        
        NSLayoutConstraint.activate([stockPriceOpenLabelTitle.topAnchor.constraint(equalTo: containerView.topAnchor), stockPriceOpenLabelTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor), stockPriceOpenLabelTitle.widthAnchor.constraint(equalTo: containerView.widthAnchor), stockPriceOpenLabelTitle.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([openPriceLabel.topAnchor.constraint(equalTo: containerView.topAnchor), openPriceLabel.rightAnchor.constraint(equalTo: centerXAnchor, constant: -10), openPriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine1.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10), separatorLine1.leftAnchor.constraint(equalTo: containerView.leftAnchor),separatorLine1.rightAnchor.constraint(equalTo: openPriceLabel.rightAnchor),separatorLine1.heightAnchor.constraint(equalToConstant: 1)])
        
        
        NSLayoutConstraint.activate([stockPriceVolumeLabel.topAnchor.constraint(equalTo: containerView.topAnchor), stockPriceVolumeLabel.leftAnchor.constraint(equalTo: centerXAnchor, constant: 10), stockPriceVolumeLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor ), stockPriceVolumeLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([volumePriceLabel.topAnchor.constraint(equalTo: containerView.topAnchor), volumePriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10), volumePriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine2.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10), separatorLine2.leftAnchor.constraint(equalTo: stockPriceVolumeLabel.leftAnchor),separatorLine2.rightAnchor.constraint(equalTo: volumePriceLabel.rightAnchor),separatorLine2.heightAnchor.constraint(equalToConstant: 1)])
        
        
        NSLayoutConstraint.activate([stockPriceHighLabel.topAnchor.constraint(equalTo: stockPriceOpenLabelTitle.bottomAnchor, constant: 20), stockPriceHighLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10), stockPriceHighLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor ), stockPriceHighLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
         NSLayoutConstraint.activate([highPriceLabel.topAnchor.constraint(equalTo: stockPriceHighLabel.topAnchor), highPriceLabel.rightAnchor.constraint(equalTo: centerXAnchor, constant: -10), highPriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine3.bottomAnchor.constraint(equalTo: stockPriceHighLabel.bottomAnchor, constant: 10), separatorLine3.leftAnchor.constraint(equalTo: stockPriceHighLabel.leftAnchor),separatorLine3.rightAnchor.constraint(equalTo: highPriceLabel.rightAnchor),separatorLine3.heightAnchor.constraint(equalToConstant: 1)])
        
        
        NSLayoutConstraint.activate([stockPriceMarketCapitalLabel.topAnchor.constraint(equalTo: stockPriceHighLabel.topAnchor), stockPriceMarketCapitalLabel.leftAnchor.constraint(equalTo: centerXAnchor, constant: 10), stockPriceMarketCapitalLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor ), stockPriceMarketCapitalLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([marketCapitalPriceLabel.topAnchor.constraint(equalTo: stockPriceMarketCapitalLabel.topAnchor), marketCapitalPriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10), marketCapitalPriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine4.bottomAnchor.constraint(equalTo: stockPriceMarketCapitalLabel.bottomAnchor, constant: 10), separatorLine4.leftAnchor.constraint(equalTo: stockPriceMarketCapitalLabel.leftAnchor),separatorLine4.rightAnchor.constraint(equalTo: marketCapitalPriceLabel.rightAnchor),separatorLine4.heightAnchor.constraint(equalToConstant: 1)])
        
        
        
        NSLayoutConstraint.activate([stockPriceLowLabel.topAnchor.constraint(equalTo: stockPriceHighLabel.bottomAnchor, constant: 20), stockPriceLowLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10), stockPriceLowLabel.widthAnchor.constraint(equalTo:containerView.widthAnchor), stockPriceLowLabel.heightAnchor.constraint(equalTo:containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([lowPriceLabel.topAnchor.constraint(equalTo: stockPriceLowLabel.topAnchor), lowPriceLabel.rightAnchor.constraint(equalTo: centerXAnchor, constant: -10), lowPriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine5.bottomAnchor.constraint(equalTo: stockPriceLowLabel.bottomAnchor, constant: 10), separatorLine5.leftAnchor.constraint(equalTo: stockPriceLowLabel.leftAnchor),separatorLine5.rightAnchor.constraint(equalTo: lowPriceLabel.rightAnchor),separatorLine5.heightAnchor.constraint(equalToConstant: 1)])
        
         NSLayoutConstraint.activate([stockPricePERatioLabel.topAnchor.constraint(equalTo: stockPriceLowLabel.topAnchor), stockPricePERatioLabel.leftAnchor.constraint(equalTo: centerXAnchor, constant: 10), stockPricePERatioLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor ), stockPricePERatioLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([ratioPEPriceLabel.topAnchor.constraint(equalTo: stockPricePERatioLabel.topAnchor), ratioPEPriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10), ratioPEPriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
          NSLayoutConstraint.activate([separatorLine6.bottomAnchor.constraint(equalTo: stockPricePERatioLabel.bottomAnchor, constant: 10), separatorLine6.leftAnchor.constraint(equalTo: stockPricePERatioLabel.leftAnchor),separatorLine6.rightAnchor.constraint(equalTo: ratioPEPriceLabel.rightAnchor),separatorLine6.heightAnchor.constraint(equalToConstant: 1)])
        
        NSLayoutConstraint.activate([stockPrice_52_WeekLow.topAnchor.constraint(equalTo: stockPriceLowLabel.bottomAnchor, constant: 20), stockPrice_52_WeekLow.leftAnchor.constraint(equalTo: leftAnchor, constant: 10), stockPrice_52_WeekLow.widthAnchor.constraint(equalTo:containerView.widthAnchor ), stockPrice_52_WeekLow.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([weekLow_52_PriceLabel.topAnchor.constraint(equalTo: stockPrice_52_WeekLow.topAnchor), weekLow_52_PriceLabel.rightAnchor.constraint(equalTo: centerXAnchor, constant: -10), weekLow_52_PriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine7.bottomAnchor.constraint(equalTo: stockPrice_52_WeekLow.bottomAnchor, constant: 10), separatorLine7.leftAnchor.constraint(equalTo: stockPrice_52_WeekLow.leftAnchor),separatorLine7.rightAnchor.constraint(equalTo: weekLow_52_PriceLabel.rightAnchor),separatorLine7.heightAnchor.constraint(equalToConstant: 1)])
        
        NSLayoutConstraint.activate([stockPrice_52_WeekHigh.topAnchor.constraint(equalTo: stockPrice_52_WeekLow.topAnchor ), stockPrice_52_WeekHigh.leftAnchor.constraint(equalTo: centerXAnchor, constant: 10), stockPrice_52_WeekHigh.widthAnchor.constraint(equalTo: containerView.widthAnchor), stockPrice_52_WeekHigh.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
         NSLayoutConstraint.activate([weekHigh_52_PriceLabel.topAnchor.constraint(equalTo: stockPrice_52_WeekHigh.topAnchor), weekHigh_52_PriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10), weekHigh_52_PriceLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor)])
        
        NSLayoutConstraint.activate([separatorLine8.bottomAnchor.constraint(equalTo: stockPrice_52_WeekHigh.bottomAnchor, constant: 10), separatorLine8.leftAnchor.constraint(equalTo: stockPrice_52_WeekHigh.leftAnchor),separatorLine8.rightAnchor.constraint(equalTo: weekHigh_52_PriceLabel.rightAnchor),separatorLine8.heightAnchor.constraint(equalToConstant: 1)])
       
    }
    
}
