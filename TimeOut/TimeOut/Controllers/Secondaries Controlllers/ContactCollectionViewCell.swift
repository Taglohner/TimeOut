//
//  ContactCollectionViewCell.swift
//  TimeOut
//
//  Created by Steven Taglohner on 23/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class ContactCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .yellow
    }
}
