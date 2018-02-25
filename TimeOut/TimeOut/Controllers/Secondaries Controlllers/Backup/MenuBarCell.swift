
import UIKit

class MenuBarCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    let cellIdentifier = "menuBar"
    var contentCell: ContentCell?
    
    let menuTabTitle = ["Overview","Review","Contact"]
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    func setupViews() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MenuBar.self, forCellWithReuseIdentifier: "menuBar")
        
        [collectionView].forEach { addSubview($0) }
        
        collectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    // Data Source
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuTabTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! MenuBar
        cell.tabTitle = menuTabTitle[indexPath.item]
        return cell
    }
    
    // Layout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 3, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // Delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        contentCell?.scrollToMenuIndex(indexPath.item)
    }
}

class MenuBar: UICollectionViewCell {
    
    var tabTitle: String? {
        didSet {
            guard let tabTitle = tabTitle else {
                return
            }
            tabLabel.text = tabTitle
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupMenuTabBarUnderline()
    }
    
    override var isHighlighted: Bool {
        
        didSet {
            tabLabel.textColor = UIColor(r: 255, g: 255, b: 100, alpha: 1)
        }
    }
    
    override var isSelected: Bool {
        didSet {
            tabLabel.textColor = UIColor(r: 255, g: 255, b: 60, alpha: 1)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tabLabel: UILabel = {
        let labelView = UILabel()
        labelView.textAlignment = .center
        labelView.font = .systemFont(ofSize: 16)
        labelView.textColor = .black
        labelView.text = "Label"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.backgroundColor = .white
        return labelView
    }()
    
    let tabBarUnderline: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var tabBarUnderlineLeftAnchorConstraint: NSLayoutConstraint?
    
    func setupMenuTabBarUnderline(){
        
        tabBarUnderlineLeftAnchorConstraint = tabBarUnderline.leftAnchor.constraint(equalTo: self.leftAnchor)
        tabBarUnderlineLeftAnchorConstraint?.isActive = true
        
        tabBarUnderline.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tabBarUnderline.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3).isActive = true
        tabBarUnderline.heightAnchor.constraint(equalToConstant: 3).isActive = true
    }
    
    func setupViews(){
        
        backgroundColor = .white
        [tabLabel, tabBarUnderline].forEach { addSubview($0) }
        
        tabLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: self.frame.height -
            3))
    }
}









