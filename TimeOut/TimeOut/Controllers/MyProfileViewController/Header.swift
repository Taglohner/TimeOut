//
//
//import UIKit
//
//class Header: UITableViewHeaderFooterView {
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//        setupViews()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "My header"
//        label.textAlignment = .center
//        let customLightGray = UIColor(r: 236, g: 236, b: 236, alpha: 1)
//        label.backgroundColor = customLightGray
//        label.textColor = .orange
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    func setupViews() {
//        
//        addSubview(nameLabel)
//        nameLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
//    }
//}
//
