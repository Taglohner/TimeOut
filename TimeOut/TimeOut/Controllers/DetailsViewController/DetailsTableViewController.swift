
import UIKit
import Hero


import UIKit

class DetailsTableViewController: UIViewController  {
    
    var tableView = UITableView()
    let identifier = "detailsCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hero.isEnabled = true
        
        setupTableView()
    }
    
    func setupTableView() {
        
        tableView = UITableView(frame: view.frame, style: .plain)

        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailsPhotoAlbumCell.self, forCellReuseIdentifier: identifier)
        
        view.addSubview(tableView)
    }
    
    func setupNavigationbar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    

    
}

