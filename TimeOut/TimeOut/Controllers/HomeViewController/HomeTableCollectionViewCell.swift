
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
//        labelView.backgroundColor = .blue
        labelView.textAlignment = .left
        labelView.font = .boldSystemFont(ofSize: 24)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
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
        
        [featuredCollectionView, headerLabel].forEach { addSubview($0) }
        
        headerLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 50))
        
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
        return CGSize(width: 330, height: 246)
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
//        imageView.layer.cornerRadius = 0
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
        labelView.textAlignment = .justified
        labelView.font = .boldSystemFont(ofSize: 18)
        labelView.textColor = .black
        labelView.text = "Restaurant Name"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let secondLabel: UILabel = {
        let labelView = UILabel()
//        labelView.backgroundColor = .red
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 14)
        labelView.textColor = .darkGray
        labelView.text = "Type - Cousine - £££"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let thirdLabel: UILabel = {
        let labelView = UILabel()
//        labelView.backgroundColor = .gray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 14)
        labelView.textColor = .black
        labelView.text = "*****"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    func setupViews() {

        let labelsStackView = UIStackView(arrangedSubviews: [firstLabel, secondLabel, thirdLabel])
        labelsStackView.distribution = .fillProportionally
        labelsStackView.axis = .vertical
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        [mainImage, labelsStackView].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 170))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 34, height: 34))
        labelsStackView.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: bottomAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 10, right: 0))
    }
}





