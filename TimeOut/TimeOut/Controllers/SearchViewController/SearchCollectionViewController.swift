
import UIKit

class SearchCollectionViewController: UIViewController, UICollectionViewDataSource {
    
    // MARK: Properties
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the collection view layout
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView!.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "searchCollectionViewControllerCell")
        view.addSubview(collectionView)
        
        // Setup collection view view properties
        
        collectionView.backgroundColor = .white
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
}
