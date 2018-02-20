

import UIKit

class HomeHeader: UITableViewHeaderFooterView {

    var headerTitle: String? {
        didSet {
            guard let headerTitle = headerTitle else {
                return
            }
            nameLabel.text = headerTitle
        }
    }
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "My header"
        label.textAlignment = .left
        label.backgroundColor = .white
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() {

        addSubview(nameLabel)
        nameLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 4, bottom: 0, right: 4))
    }
}


