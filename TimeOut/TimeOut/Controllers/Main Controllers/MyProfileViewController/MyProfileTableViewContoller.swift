
import UIKit

class MyProfileTableViewContoller: UITableViewController {
    
    // MARK: Properties
    
    let customLightGray = UIColor(r: 236, g: 236, b: 236, alpha: 1)
    
    var topRefreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.refreshControl = topRefreshControl
//        tableView.separatorStyle = .none
//        tableView.sectionHeaderHeight = 28
        tableView.register(MyProfileTableViewCell.self, forCellReuseIdentifier: "myProfileCell")
//        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "RootHeader")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if topRefreshControl.isRefreshing {
            print("Refreshing")
        }
        topRefreshControl.endRefreshing()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
