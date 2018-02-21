
import UIKit

class HomeRegularTableViewCell: UITableViewCell {
    
    var restaurant: Restaurant? {
        
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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
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
        
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 174))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 12), size: .init(width: 35, height: 35))
        labelsStackView.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: bottomAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 10, right: 0))
    }
}

