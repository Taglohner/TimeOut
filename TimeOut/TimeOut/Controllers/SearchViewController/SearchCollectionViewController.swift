//
//  MoreCollectionViewController.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 06/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class SearchCollectionViewController: UIViewController, UICollectionViewDataSource {
    
    // MARK: Properties
    
    var collectionView: UICollectionView!
    
    var postArray = [
        
        PostObject(title: "Office for Mac buying guide 2018", excerpt: "Everything you need to know about Office for Mac & which version you should buy", postPicture: #imageLiteral(resourceName: "Post1"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "Today", isFeatured: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the collection view layout
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView!.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "searchCollectionViewControllerCell")
        view.addSubview(collectionView)
        
        // Setup collection view view properties
        
        collectionView.backgroundColor = .clear
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
}
