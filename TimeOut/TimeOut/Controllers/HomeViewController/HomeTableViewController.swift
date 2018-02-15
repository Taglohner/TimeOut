
import UIKit

class HomeTableViewController: UITableViewController {
    
    fileprivate let viewModel = RestaurantCategoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = viewModel
        tableView.register(HomeRegularTableViewCell.self, forCellReuseIdentifier: "homeTableViewCell")
        tableView.register(HomeTableCollectionViewCell.self, forCellReuseIdentifier: "homeTableCollectionViewCell")
        tableView.separatorStyle = .none
    }
     
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

