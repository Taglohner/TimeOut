import UIKit

class HomeTableViewController: UIViewController, UITableViewDelegate {
    
    var tableView = UITableView()
    fileprivate let viewModel = RestaurantCategoryViewModel()
    var restaurant: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        setupNavigationBar()
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
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.setBottomBorderColor(color: .white, height: 2)
        self.navigationController?.navigationBar.barTintColor = .white
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
            
            let venue = VenueDetailsController()

            navigationController?.pushViewController(venue, animated: true)

        case .sponsored:
            
            print("bla")

        }
    }
    
    
}
