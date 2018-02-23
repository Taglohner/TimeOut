
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
        self.selectionStyle = .none
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
        secondStackView.spacing = 3
        secondStackView.axis = .vertical
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        
        [mainImage, firstStackView, secondStackView].forEach { self.addSubview($0) }
        mainImage.addSubview(favoriteButton)
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 174))
        favoriteButton.anchor(top: mainImage.topAnchor, leading: nil, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 12), size: .init(width: 35, height: 35))
        firstStackView.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: nil, trailing: mainImage.trailingAnchor, padding: .init(top: 14, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 20))
        secondStackView.anchor(top: firstStackView.bottomAnchor, leading: firstStackView.leadingAnchor, bottom: bottomAnchor, trailing: firstStackView.trailingAnchor, padding: .init(top: 3, left: 0, bottom: 20, right: 0))
    }
}

