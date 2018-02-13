
import UIKit

class HomeTableCollectionViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var category: Category? {
        didSet{
            
            
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
    
    let categoryLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .green
        labelView.textAlignment = .justified
        labelView.font = .boldSystemFont(ofSize: 26)
        labelView.textColor = .black
        labelView.text = "Category Name"
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
        
        [featuredCollectionView, categoryLabel].forEach { addSubview($0) }
        
        categoryLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 4, left: 4, bottom: 0, right: 4), size: .init(width: 0, height: 40))
        
        featuredCollectionView.anchor(top: categoryLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    // Data Source
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = category?.restaurants?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionViewCell
        
        return cell
    }
    
    // Layout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 310, height: 238)
    }
    
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    //        return CGFloat(12)
    //    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(6, 6, 0, 6)
    }
}

class HomeCollectionViewCell: UICollectionViewCell {
    
    //    var post: PostObject? {
    //        didSet{
    //
    //        }
    //    }
    
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
        //        imageView.layer.masksToBounds = false
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
        labelView.font = .boldSystemFont(ofSize: 24)
        labelView.textColor = .white
        labelView.text = "Restaurant Name"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let secondLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .white
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 20)
        labelView.textColor = .darkGray
        labelView.text = "Type - Cousine - £££"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let thirdLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .gray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 20)
        labelView.textColor = .white
        labelView.text = "*****"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    func setupViews() {
        backgroundColor = .red
        
        [mainImage, firstLabel, secondLabel, thirdLabel].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 160))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 34, height: 34))
        firstLabel.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 28))
        secondLabel.anchor(top: firstLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 22))
        thirdLabel.anchor(top: secondLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 22))
        
    }
}





