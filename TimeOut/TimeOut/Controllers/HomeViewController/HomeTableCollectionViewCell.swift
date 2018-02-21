
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
            headerLabel.text = item.sectionTitle
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
    
    let headerLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .blue
        labelView.textAlignment = .left
        labelView.font = .boldSystemFont(ofSize: 26)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let featuredCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .black
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    func setupViews() {
        
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
        featuredCollectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "homeCollectionViewCell")
        
        [featuredCollectionView, headerLabel].forEach { addSubview($0) }
        
        headerLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 40))
        
        featuredCollectionView.anchor(top: headerLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    // Data Source
    
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
        return CGSize(width: 350, height: 256)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsetsMake(0, 12, 12, 12)
//    }
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
        imageView.backgroundColor = .yellow
//        imageView.layer.cornerRadius = 0
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let firstLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .blue
        labelView.textAlignment = .justified
        labelView.font = .boldSystemFont(ofSize: 18)
        labelView.textColor = .black
        labelView.text = "Restaurant Name"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let secondLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .red
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 16)
        labelView.textColor = .darkGray
        labelView.text = "Type - Cousine - £££"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let thirdLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .gray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 16)
        labelView.textColor = .black
        labelView.text = " *****"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    func setupViews() {
//        backgroundColor = .red
        
        [mainImage, firstLabel, secondLabel, thirdLabel].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 180))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 34, height: 34))
        firstLabel.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 28))
        secondLabel.anchor(top: firstLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 22))
        thirdLabel.anchor(top: secondLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 22))
        
    }
}





