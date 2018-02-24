

import UIKit

class RestaurantDetailsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var collectionView: UICollectionView!
    let overviewCollectionViewCell = "overviewCollectionViewCell"
    let reviewCollectionViewCell = "reviewCollectionViewCell"
    let contactCollectionViewCell = "contactCollectionViewCell"
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        setupNavigationBar()
    }
    
    func setupCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .green
        collectionView.contentInset = UIEdgeInsetsMake(-64, 0, -49, 0)
//        collectionView.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isPagingEnabled = true
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
        }
        
        collectionView.register(OverviewCollectionViewCell.self, forCellWithReuseIdentifier: overviewCollectionViewCell)
        collectionView.register(ReviewCollectionViewCell.self, forCellWithReuseIdentifier: reviewCollectionViewCell)
        collectionView.register(ContactCollectionViewCell.self, forCellWithReuseIdentifier: contactCollectionViewCell)
        
        view.addSubview(collectionView)
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.isHidden = false
        navigationItem.backBarButtonItem?.isEnabled = true
        navigationController?.navigationBar.isTranslucent = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier: String
        
        if indexPath.item == 1 {
            identifier = overviewCollectionViewCell
        } else if indexPath.item == 2 {
            identifier = reviewCollectionViewCell
        } else {
            identifier = contactCollectionViewCell
        }
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }

}

