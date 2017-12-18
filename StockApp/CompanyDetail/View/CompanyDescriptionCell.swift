//
//  CompanyDescriptionCell.swift
//  StockApp
//
//  Created by ashim Dahal on 12/14/17.
//  Copyright © 2017 ashim Dahal. All rights reserved.
//

import UIKit

class CompanyDescriptionCell: CollectionViewBaseCell {
    
    override var dataSourceItem: Any? {
        didSet {
            guard let companyDiscriptionValue = dataSourceItem as? CompanyDescription else {return}
            companyInformationTextView.text = companyDiscriptionValue.short_description
        }
    }
    
    
    
    let companyInformationTextView : UITextView = {
       let textView = UITextView()
        textView.text = "This is attributed string. This section is for display company information and description that was provided by the database system"
        textView.backgroundColor = .clear
        textView.isScrollEnabled = false
        textView.isEditable = false
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        let attributedText  = NSMutableAttributedString(string: textView.text , attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 18), NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.paragraphStyle : paragraphStyle])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
   
    override func setupViews() {
        super.setupViews()
        self.backgroundColor = .darkBlue
        separatorLineView.isHidden = false
        addSubview(companyInformationTextView)
        NSLayoutConstraint.activate([companyInformationTextView.topAnchor.constraint(equalTo: topAnchor, constant : 10), companyInformationTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),companyInformationTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10),companyInformationTextView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
    
    
}
