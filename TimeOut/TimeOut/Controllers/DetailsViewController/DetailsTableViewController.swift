
import UIKit
import Hero


import UIKit

class DetailsTableViewController: UIViewController  {
    
    var tableView = UITableView()
    let identifier = "detailsCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hero.isEnabled = true
  
        self.hero.modalAnimationType = .selectBy(presenting: .slide(direction: .up), dismissing: .slide(direction: .down))
        setupTableView()
    }
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupTableView() {
        
        tableView = UITableView(frame: view.frame, style: .plain)

        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailsPhotoAlbumCell.self, forCellReuseIdentifier: identifier)
        
        [tableView, backButton].forEach { view.addSubview($0) }
        
        backButton.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil
            , trailing: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0), size: .init(width: 60, height: 40))
        backButton.addTarget(self, action: #selector(backToPrevious), for: .touchUpInside)
    }
    
    func setupNavigationbar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func backToPrevious() {
        self.dismiss(animated: true, completion: nil)
    }
    
}

