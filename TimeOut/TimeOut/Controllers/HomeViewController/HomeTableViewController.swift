
import UIKit

class HomeTableViewController: UITableViewController {
    
    var categories: [Category]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categories = Category.sampleCategories()
        
        tableView.register(HomeRegularTableViewCell.self, forCellReuseIdentifier: "homeTableViewCell")
        tableView.register(HomeTableCollectionViewCell.self, forCellReuseIdentifier: "homeTableCollectionViewCell")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}

