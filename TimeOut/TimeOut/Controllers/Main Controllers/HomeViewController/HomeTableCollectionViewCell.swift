
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
            //            headerLabel.text = item.sectionTitle
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
        
        //        headerLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 50))
        
        featuredCollectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
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
        labelView.textAlignment = .left
        labelView.font = .boldSystemFont(ofSize: 16)
        labelView.textColor = .black
        labelView.text = "Restaurant Name"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let secondLabel: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .red
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
        labelView.textColor = .gray
        labelView.text = "★★★☆☆"
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
    
    func setupViews() {
        
        let firstStackView = UIStackView(arrangedSubviews: [firstLabel, rightLabel])
        firstStackView.distribution = .fillEqually
        firstStackView.spacing = 0
        firstStackView.axis = .horizontal
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let secondStackView = UIStackView(arrangedSubviews: [secondLabel, thirdLabel])
        secondStackView.distribution = .fillProportionally
        secondStackView.spacing = 2
        secondStackView.axis = .vertical
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        
        [mainImage, firstStackView, secondStackView].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 170))
        
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 34, height: 34))
        
        firstStackView.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 14, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 20))
        secondStackView.anchor(top: firstStackView.bottomAnchor, leading: firstStackView.leadingAnchor, bottom: bottomAnchor, trailing: firstStackView.trailingAnchor, padding: .init(top: 3, left: 0, bottom: 6, right: 0))
        
    }
}





