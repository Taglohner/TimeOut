
import UIKit

class VenueDetailsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    
    let menuBarCell = "menuBarCell"
    let contentCell = "contentCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        setupNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        self.navigationController?.navigationBar.isHidden = false
    }
    
    func setupTable() {
        
        tableView = UITableView(frame: self.view.bounds, style: .plain)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(MenuBarCell.self, forCellReuseIdentifier: "menuBarCell")
        tableView.register(ContentCell.self, forCellReuseIdentifier: "contentCell")

        tableView.separatorStyle = .none
        tableView.backgroundColor = .red
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier: String
        
        if indexPath.item == 0 {
            identifier = menuBarCell
        } else if indexPath.item == 1 {
            identifier = contentCell
        } else {
            return UITableViewCell()
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.item == 0 {
            return 30
        } else if indexPath.item == 1 {
            return view.frame.height - 50
        } else {
            return 0
        }
    }
}
