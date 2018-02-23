

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

    let labelView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "My header"
        label.textAlignment = .left
        label.backgroundColor = .white
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {

        addSubview(labelView)
        labelView.addSubview(nameLabel)
        
        labelView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        
        nameLabel.anchor(top: labelView.topAnchor, leading: labelView.leadingAnchor, bottom: labelView.bottomAnchor, trailing: labelView.trailingAnchor, padding: .init(top: 0, left: 12, bottom: 0, right: 0))
    }
}


