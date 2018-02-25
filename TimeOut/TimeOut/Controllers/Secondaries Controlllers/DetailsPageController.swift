
import UIKit
import Tabman
import Pageboy

class DetailsPageController: TabmanViewController, PageboyViewControllerDataSource {
    
    let viewControllers = [OverviewViewController(), ReviewsViewController(), ContactViewController()]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.bar.items = [Item(title: "OverView"), Item(title: "Reviews"), Item(title: "Contact")]
        self.bar.style = .buttonBar

    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    
    
}
