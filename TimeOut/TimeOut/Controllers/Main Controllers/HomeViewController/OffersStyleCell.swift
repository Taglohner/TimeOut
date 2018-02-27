
import UIKit
import ImageSlideshow

class OffersStyleCell: UITableViewCell {
    
    var items: ViewModelItemTypeOffers?
    var item: RestaurantCategoryViewModelItem? {
        
        didSet {
            
            guard let item = item as? ViewModelItemTypeOffers else {
                return
            }
            
            items = item

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
    
    let imageSlideView: ImageSlideshow = {
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
        addSubview(imageSlideView)
        imageSlideView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
}
