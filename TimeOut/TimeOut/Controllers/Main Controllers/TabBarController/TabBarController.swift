
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let homeTableViewController = HomeTableViewController()
        homeTableViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 0)
        
        let searchCollectionViewController = SearchCollectionViewController()
        searchCollectionViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let favoritesTableViewController = FavoritesTableViewController()
        favoritesTableViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        let myProfileTableViewContoller = MyProfileTableViewContoller()
        myProfileTableViewContoller.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        
        let viewControllerList = [homeTableViewController, searchCollectionViewController, favoritesTableViewController, myProfileTableViewContoller]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
