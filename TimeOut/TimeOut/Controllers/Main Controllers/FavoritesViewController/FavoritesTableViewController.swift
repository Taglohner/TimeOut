
import UIKit

class FavoritesTableViewController: UITableViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var button: UIButton!
    
    
    let customLightGray = UIColor(r: 236, g: 236, b: 236, alpha: 1)
    
    var topRefreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableView.refreshControl = topRefreshControl
        tableView.separatorStyle = .none
        tableView.sectionHeaderHeight = 28
        tableView.register(FavoritesTableViewCell.self, forCellReuseIdentifier: "favoritesCell")
        //        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "RootHeader")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.estimatedRowHeight = 340
        tableView.rowHeight = UITableViewAutomaticDimension
    }

  
    
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if topRefreshControl.isRefreshing {
            print("Refreshing")
        }
        topRefreshControl.endRefreshing()
    }
}
