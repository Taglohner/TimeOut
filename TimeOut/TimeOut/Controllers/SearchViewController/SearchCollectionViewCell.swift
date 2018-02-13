
import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    var post: PostObject? {
        didSet {
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupLayout() {
        
    }
    
}
