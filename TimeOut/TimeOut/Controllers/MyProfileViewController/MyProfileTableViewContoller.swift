
import UIKit

class MyProfileTableViewContoller: UITableViewController {
    
    let customLightGray = UIColor(r: 236, g: 236, b: 236, alpha: 1)

    var postArray = [
        
        PostObject(title: "Office for Mac buying guide 2018", excerpt: "Everything you need to know about Office for Mac & which version you should buy", postPicture: #imageLiteral(resourceName: "Post1"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "Today", isFeatured: false)
    ]
    
    // MARK: Properties
    
    var topRefreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.refreshControl = topRefreshControl
        tableView.separatorStyle = .none
        tableView.sectionHeaderHeight = 28
        tableView.register(MyProfileTableViewCell.self, forCellReuseIdentifier: "myProfileCell")
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
