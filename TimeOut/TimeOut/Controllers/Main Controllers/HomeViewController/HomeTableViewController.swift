import UIKit
import Hero

class HomeTableViewController: UIViewController, UITableViewDelegate {
    
    var tableView = UITableView()
    fileprivate let viewModel = RestaurantCategoryViewModel()
    var restaurant: Restaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        setupNavigationBar()
        self.hero.isEnabled = true
    }
    
    func setupTable() {
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.grouped)
        tableView.dataSource = viewModel
        tableView.delegate = self
        tableView.register(HomeRegularTableViewCell.self, forCellReuseIdentifier: "homeRegularTableViewCell")
        tableView.register(HomeTableCollectionViewCell.self, forCellReuseIdentifier: "homeTableCollectionViewCell")
        tableView.register(HomeHeader.self, forHeaderFooterViewReuseIdentifier: "HomeHeader")
        tableView.separatorStyle = .none
        view.addSubview(tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIApplication.shared.statusBarStyle = .default
        self.tabBarController?.setTabBarVisible(visible: true, animated: true)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    func setupNavigationBar() {

        self.navigationController?.navigationBar.setBottomBorderColor(color: .white, height: 2)
        self.navigationController?.navigationBar.barTintColor = .white
//        self.navigationController?.hidesBarsOnSwipe = true
        


    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = viewModel.items[indexPath.section]
        
        switch item.type {
        case .bestRated:
            return 246
        case .bestValue:
            return 264
        case .sponsored:
            return 246
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HomeHeader") as! HomeHeader
        header.headerTitle = viewModel.items[section].sectionTitle
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = viewModel.items[indexPath.section]
        
        switch item.type {
            
        case .bestRated:
            
            print("bla")
            
        case .bestValue:
            
            let venue = DetailsTableViewController()
//            self.present(venue, animated: true, completion: nil)
            navigationController?.present(venue, animated: true, completion: nil)

        case .sponsored:
            
            print("bla")

        }
    }
}

