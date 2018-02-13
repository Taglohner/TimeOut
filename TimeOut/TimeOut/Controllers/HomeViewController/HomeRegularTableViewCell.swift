
import UIKit

class HomeRegularTableViewCell: UITableViewCell {
    
    var categories: Category? {
        didSet {
            //            guard let categories = categories else {
            //                return
            //
            //            }
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let postImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let postTitle: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .yellow
        labelView.textAlignment = .natural
        labelView.font = .boldSystemFont(ofSize: 16)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        return labelView
    }()
    
    let postDate: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .red
        labelView.textAlignment = .left
        labelView.font = .systemFont(ofSize: 12)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        return labelView
    }()
    
    func setupViews() {
        
        self.selectionStyle = .none
        
        [postImage, postTitle, postDate].forEach { addSubview($0) }
        
        postImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 6, left: 4, bottom: 6, right: 4), size: .init(width: 64, height: 64))
        postTitle.anchor(top: postImage.topAnchor, leading: postImage.trailingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 40))
        postDate.anchor(top: postTitle.bottomAnchor, leading: postTitle.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 100, height: 20))
    }
}

