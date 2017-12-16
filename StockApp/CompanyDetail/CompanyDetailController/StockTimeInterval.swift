//
//  StockMenu.swift
//  StockApp
//
//  Created by ashim Dahal on 12/15/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class StockTimeInterval: UIView,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .darkBlue
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    
    let cellID = "cellID"
    
    let cellDataArray = ["1D", "1W", "1M", "3M", "1Y", "5Y"]
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        viewConstraint()
        collectionView.register(TimeIntervalCell.self, forCellWithReuseIdentifier: cellID)
        let selectetIndexPath = IndexPath(item: 0, section: 0)
        collectionView.selectItem(at: selectetIndexPath, animated: true, scrollPosition: .top)
    }
    
    private func viewConstraint() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([collectionView.leftAnchor.constraint(equalTo: leftAnchor),collectionView.rightAnchor.constraint(equalTo: rightAnchor),collectionView.topAnchor.constraint(equalTo: topAnchor),collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
    
    // Mark: CollectionView properties
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width/6, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellDataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)as! TimeIntervalCell
        let cellData = cellDataArray[indexPath.item]
        cell.backgroundColor = .darkBlue
        cell.intervalLabel.text = cellData
        cell.intervalLabel.sizeToFit()
        return cell
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}

class TimeIntervalCell: CollectionViewBaseCell {
    
    let containerView : UIView = {
       let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var intervalLabel : UILabel = {
        let label = UILabel()
        label.text = "1D"
        label.font = UIFont.systemFont(ofSize: 12)
        label.preferredMaxLayoutWidth = 40
        label.textColor = .lightGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let highlightedLine : UIView = {
        let view = UIView()
        view.backgroundColor = .darkBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(containerView)
        containerView.addSubview(intervalLabel)
        containerView.addSubview(highlightedLine)
        addViewConstraint()
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                highlightedLine.backgroundColor = .white
                intervalLabel.textColor = .white
                return
            }else {
                intervalLabel.textColor = .lightGreen
                highlightedLine.backgroundColor = .darkBlue
            }
        }
    }
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                intervalLabel.textColor = .white
                highlightedLine.backgroundColor = .white
                return
            }else {
                intervalLabel.textColor = .lightGreen
                highlightedLine.backgroundColor = .darkBlue
            }
        }
    }
    
    private func addViewConstraint() {
        NSLayoutConstraint.activate([containerView.topAnchor.constraint(equalTo: topAnchor),containerView.bottomAnchor.constraint(equalTo: bottomAnchor),containerView.leftAnchor.constraint(equalTo: leftAnchor),containerView.rightAnchor.constraint(equalTo: rightAnchor )])
        
        NSLayoutConstraint.activate([intervalLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -4),intervalLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),intervalLabel.heightAnchor.constraint(equalToConstant: 20)])
        
        NSLayoutConstraint.activate([highlightedLine.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -1),highlightedLine.centerXAnchor.constraint(equalTo: containerView.centerXAnchor), highlightedLine.widthAnchor.constraint(equalTo : widthAnchor),highlightedLine.heightAnchor.constraint(equalToConstant: 2)])
    }
}
