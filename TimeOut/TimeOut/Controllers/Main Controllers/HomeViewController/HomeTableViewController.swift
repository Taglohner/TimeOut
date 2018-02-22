import UIKit

class HomeTableViewController: UIViewController {
    
    var tableView = UITableView()
    fileprivate let viewModel = RestaurantCategoryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.grouped)
        
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        
        tableView.register(HomeRegularTableViewCell.self, forCellReuseIdentifier: "homeRegularTableViewCell")
        tableView.register(HomeTableCollectionViewCell.self, forCellReuseIdentifier: "homeTableCollectionViewCell")
        tableView.register(HomeHeader.self, forHeaderFooterViewReuseIdentifier: "HomeHeader")
        
        tableView.separatorStyle = .none
//        tableView.backgroundColor = .gray
        view.addSubview(tableView)
        self.navigationController?.navigationBar.barTintColor = .white
    }
}
