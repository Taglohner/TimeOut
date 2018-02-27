
import UIKit
import Hero
import ImageSlideshow

class DetailsPhotoAlbumCell: UITableViewCell {
    
    var pictures: [UIImage]? {
        didSet {
            
            guard let pictures = pictures else {
                return
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
    
    let baseView: ImageSlideshow = {
        let view = ImageSlideshow()
        view.setImageInputs([
            
            ImageSource(image: UIImage(named: "mobile_picture_02202018_232948")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_233153")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_233519")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_222018")!)
            
        ])
        
        view.backgroundColor = .white
        view.slideshowInterval = 3
        view.contentScaleMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews() {
        [baseView].forEach { addSubview($0) }
        baseView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
}

