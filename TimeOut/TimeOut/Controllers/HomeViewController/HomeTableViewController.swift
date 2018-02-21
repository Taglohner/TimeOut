
import UIKit

class HomeTableViewController: UITableViewController {
    
    fileprivate let viewModel = RestaurantCategoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        tableView.register(HomeRegularTableViewCell.self, forCellReuseIdentifier: "homeRegularTableViewCell")
        tableView.register(HomeTableCollectionViewCell.self, forCellReuseIdentifier: "homeTableCollectionViewCell")
        tableView.separatorStyle = .none


    }
}

