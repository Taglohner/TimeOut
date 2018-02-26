
import UIKit
import Hero

class DetailsPhotoAlbumCell: UITableViewCell {
    
    //    var profile: Profile? {
    //        didSet {
    //
    //
    //        }
    //    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    let albumView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let dismissViewButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews() {
        
        addSubview(albumView)
        albumView.addSubview(dismissViewButton)
        
        albumView.anchorSize(to: self)
        albumView.hero.id = "photoAlbum"
        
        dismissViewButton.anchor(top: albumView.topAnchor, leading: albumView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0), size: .init(width: 40, height: 40))
        
        dismissViewButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        
        
    }
    
    @objc func dismissView(){
        
    }
}

