
import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    //    var profile: Profile? {
    //        didSet {
    //
    //
    //        }
    //    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        let customLightGray = UIColor(r: 236, g: 236, b: 236, alpha: 1)
        self.backgroundColor = customLightGray
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let cellBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    let postImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let postTitle: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .natural
        labelView.font = .boldSystemFont(ofSize: 16)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        return labelView
    }()
    
    let postExcerpt: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .natural
        labelView.font = .systemFont(ofSize: 16)
        labelView.numberOfLines = 4
        labelView.text = "Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let authorName: UILabel = {
        let labelView = UILabel()
        //        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 12)
        labelView.textColor = .black
        labelView.text = "Steven Taglohner"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let authorProfileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    func setupViews() {
        
        addSubview(cellBackgroundView)
        [postImage, postTitle, postExcerpt, authorProfileImage, authorName ].forEach { cellBackgroundView.addSubview($0) }
        
        
        cellBackgroundView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 4, left: 8, bottom: 4, right: 8))
        postImage.anchor(top: topAnchor, leading: cellBackgroundView.leadingAnchor, bottom: nil, trailing: cellBackgroundView.trailingAnchor, padding: .init(top: 10, left: 8, bottom: 8, right: 8), size: .init(width: 0, height: 160))
        postTitle.anchor(top: postImage.bottomAnchor, leading: postImage.leadingAnchor, bottom: postExcerpt.topAnchor, trailing: postImage.trailingAnchor, padding: .init(top: 4, left: 0, bottom: 4, right: 0))
        postExcerpt.anchor(top: postTitle.bottomAnchor, leading: postImage.leadingAnchor, bottom: authorProfileImage.topAnchor, trailing: postImage.trailingAnchor, padding: .init(top: 4, left: 0, bottom: 4, right: 0))
        authorProfileImage.anchor(top: postExcerpt.bottomAnchor, leading: postImage.leadingAnchor, bottom: cellBackgroundView.bottomAnchor, trailing: nil, padding: .init(top: 4, left: 0, bottom: 8, right: 0), size: .init(width: 40, height: 40))
        authorName.anchor(top: authorProfileImage.topAnchor, leading: authorProfileImage.trailingAnchor, bottom: authorProfileImage.bottomAnchor, trailing: postImage.trailingAnchor, padding: .init(top: 0, left: 4, bottom: 0, right: 0))
    }
}





