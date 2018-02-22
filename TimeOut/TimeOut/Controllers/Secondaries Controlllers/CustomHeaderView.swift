//
//  CustomHeaderView.swift
//  TimeOut
//
//  Created by Steven Taglohner on 22/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {
    
    var restaurant: Restaurant? {
        didSet {
            
            guard let imageName = restaurant?.imageName else {
                return
            }
            topImageView.image = UIImage(named: imageName)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "mobile_picture_02202018_232948")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let colorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(r: 235, g: 96, b: 91, alpha: 0.6)
        return view
    }()
    
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Stretchy Header"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    func setupViews() {
    
        [topImageView, colorView].forEach { self.addSubview($0) }
        topImageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        colorView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
}
