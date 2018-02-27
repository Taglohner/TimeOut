import Hero
import UIKit

class HomeTableCollectionViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var items: ViewModelItemTypeBestRated?
    var item: RestaurantCategoryViewModelItem? {
        
        // Cast the ProfileViewModelItem to appropriate item type
        
        didSet {
            
            guard let item = item as? ViewModelItemTypeBestRated else {
                return
            }
            items = item
            
            featuredCollectionView.reloadData()
        }
    }
    
    fileprivate let cellId = "homeCollectionViewCell"
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let featuredCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    func setupViews() {
        
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
        featuredCollectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "homeCollectionViewCell")
        
        [featuredCollectionView].forEach { addSubview($0) }
        
        featuredCollectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let count = items?.restaurants.count else {
            return 0
        }
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionViewCell
        cell.restaurant = items?.restaurants[indexPath.item]
        return cell
    }
    
    // Layout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 330, height: 290)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 14, 0, 14)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 14
    }
}

class HomeCollectionViewCell: UICollectionViewCell {
    
    var restaurant: Restaurant? {
        
        // Cast the ProfileViewModelItem to appropriate item type
        
        didSet {
            guard let restaurant = restaurant else {
                return
            }
            
            firstLabel.text = restaurant.name
            
            if let imageName = restaurant.imageName {
                mainImage.image = UIImage(named: imageName)
            } else {
                mainImage.image = UIImage(named: "foodPlaceholder")
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        //        imageView.backgroundColor = .yellow
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton()
        //        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let firstLabel: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .blue
        labelView.textAlignment = .left
        labelView.font = .boldSystemFont(ofSize: 16)
        labelView.textColor = .black
        labelView.text = "Restaurant Name"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let secondLabel: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .blue
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 13)
        labelView.textColor = .darkGray
        labelView.text = "Type - Cousine - £££"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let thirdLabel: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .gray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 13)
        labelView.textColor = .darkGray
        labelView.text = "Review - review"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let rightLabel: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .gray
        labelView.textAlignment = .right
        labelView.font = .systemFont(ofSize: 13)
        labelView.textColor = .black
        labelView.text = "0.5 mi • London"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let badgeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewOne: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewTwo: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewThree: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewFour: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewSix: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let badgeViewSeven: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    func setupViews() {
        
        let firstStackView = UIStackView(arrangedSubviews: [firstLabel, rightLabel])
        firstStackView.distribution = .fillEqually
        firstStackView.spacing = 0
        firstStackView.axis = .horizontal
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let secondStackView = UIStackView(arrangedSubviews: [badgeView, badgeViewOne, badgeViewTwo, badgeViewThree, badgeViewFour, badgeViewSix, badgeViewSeven])
        secondStackView.distribution = .fillProportionally
        secondStackView.alignment = .fill
        secondStackView.spacing = 4
        secondStackView.axis = .horizontal
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let thirdStackView = UIStackView(arrangedSubviews: [firstStackView, secondLabel, thirdLabel, secondStackView])
        thirdStackView.distribution = .equalSpacing
        thirdStackView.alignment = .fill
        //        thirdStackView.spacing = 2
        thirdStackView.axis = .vertical
        thirdStackView.translatesAutoresizingMaskIntoConstraints = false
        
        [mainImage, thirdStackView].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 170))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 34, height: 34))
        
        firstStackView.anchor(top: nil, leading: thirdStackView.leadingAnchor, bottom: nil, trailing: thirdStackView.trailingAnchor, size: .init(width: 0, height: 24))
        secondLabel.anchor(top: nil, leading: thirdLabel.leadingAnchor, bottom: nil, trailing: thirdStackView.trailingAnchor, size: .init(width: 0, height: 17))
        thirdLabel.anchor(top: nil, leading: thirdStackView.leadingAnchor, bottom: nil, trailing: thirdStackView.trailingAnchor, size: .init(width: 0, height: 17))
        secondStackView.anchor(top: nil, leading: thirdStackView.leadingAnchor, bottom: nil, trailing: thirdStackView.trailingAnchor, size: .init(width: 0, height: 23))
        thirdStackView.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: bottomAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 14, left: 0, bottom: 14, right: 0))
        
        badgeView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: .init(width: 0, height: 23))
        badgeViewOne.anchorSize(to: badgeView)
        badgeViewTwo.anchorSize(to: badgeView)
        badgeViewThree.anchorSize(to: badgeView)
        badgeViewFour.anchorSize(to: badgeView)
        badgeViewSix.anchorSize(to: badgeView)
        badgeViewSeven.anchorSize(to: badgeView)
    }
}





