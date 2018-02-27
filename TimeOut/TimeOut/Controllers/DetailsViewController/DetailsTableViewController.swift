
import UIKit
import Hero


import UIKit

class DetailsTableViewController: UIViewController, UIScrollViewDelegate  {
    
    var tableView = UITableView()
    let identifier = "detailsCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hero.isEnabled = true
        self.hero.modalAnimationType = .selectBy(presenting: .zoom, dismissing: .zoomOut)
        setupTableView()
    }
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

    func setupTableView() {
    
        tableView = UITableView(frame: view.frame, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.register(DetailsPhotoAlbumCell.self, forCellReuseIdentifier: identifier)
        tableView.scrollIndicatorInsets = .zero
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        [tableView, backButton].forEach { view.addSubview($0) }
        backButton.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil
            , trailing: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0), size: .init(width: 60, height: 40))
        backButton.addTarget(self, action: #selector(backToPrevious), for: .touchUpInside)
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.contentInset = .zero
        tableView.bounces = false
    }
    
    func setupNavigationbar() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @objc func backToPrevious() {
        self.dismiss(animated: true, completion: nil)
    }
}

