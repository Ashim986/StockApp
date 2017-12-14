//
//  StockDetailViewController.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class StockDetailViewController : UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let cellID = "cellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .darkBlue
//        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
  
    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
//        cell.backgroundColor = .lightBlue
//        return cell
//    }
////    override func numberOfSections(in collectionView: UICollectionView) -> Int {
////        return 4
////    }
////    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////
////        if section == 1 {
////            return 4
////        }else  {
////            return 1
////        }
////
////    }
//
////    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
////        if indexPath.section == 0 {
////            return CGSize(width: view.frame.width, height: view.frame.height)
////        }else if indexPath.section == 1{
////             return CGSize(width: view.frame.width, height: 90)
////        }else if indexPath.section == 2{
////            return CGSize(width: view.frame.width, height: 500)
////        }else {
////            return CGSize(width: view.frame.width, height: 300)
////        }
////
////
////
////    }
}
