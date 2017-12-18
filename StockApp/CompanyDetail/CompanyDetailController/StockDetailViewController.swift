//
//  StockDetailViewController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit


protocol StockDetailViewControllerDelegate
{
  func  didFinishSendingData(companyDescription : CompanyDescription)
}

class StockDetailViewController : CollectionViewBaseController {
    let cellID = "cellID"
    
    var dataSourceController : CompanyDetailDataSource?
    
//    var errorMessageLabel : UILabel = {
//       let label = UILabel()
//        label.textColor = UIColor.lightRed
//        label.text = "Apologies something went wrong. Please try Again later...."
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textAlignment = .center
//        label.isHidden = true
//        return label
//    }()
//    var timer : Timer?
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .darkBlue
        guard let navTitle = navigationItem.title else {return}
        let dataSource = CompanyDetailDataSource()
        self.dataSource = dataSource
        fetchData(navTitle: navTitle)
    }
    
    func fetchData(navTitle : String) {
        let companyDetailDataSource = CompanyDetailDataSource()
        Service.sharedInstance.fetchCompanyInformationforGivenStock(symbol: navTitle) { (compDes, err) in
            if  err != nil {
                print("Json error", err as Any)
            }
            if let dataSource = compDes {
                DispatchQueue.main.async {
                    companyDetailDataSource.didFinishSendingData(companyDescription: dataSource)
                    self.collectionView?.reloadData()
                }
                
                }
            }
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: view.frame.width, height: 100)
        }else if indexPath.section == 1{
            return CGSize(width: view.frame.width, height: 80)
        }else  {
             return CGSize(width: view.frame.width, height: 160)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: view.frame.width, height: 0)
        }else{
            return CGSize(width: view.frame.width, height: 70)
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
            return  .zero
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
 
}
