
import UIKit

class RestaurantCategoryViewModel: NSObject {
    var items = [RestaurantCategoryViewModelItem]()
    
    override init() {
        super.init()
        items.append(ViewModelItemTypeBestRated(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestValue(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeSponsored(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestValue(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestRated(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestValue(restaurants: RestaurantCategory.restaurantsSampleData()))
    }
}

extension RestaurantCategoryViewModel: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.section]
        
        switch item.type {
            
        case .bestRated:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
            cell.item = item
            return cell
            
        case .bestValue:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeRegularTableViewCell", for: indexPath) as! HomeRegularTableViewCell
            cell.item = item
            return cell
            
        case .sponsored:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
            cell.item = item
            return cell
        }
    }
}

extension RestaurantCategoryViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = items[indexPath.section]
        
        switch item.type {
        case .bestRated:
            return 256
        case .bestValue:
            return 150
        case .sponsored:
            return 256
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let item = items[section]
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HomeHeader") as! HomeHeader
        header.headerTitle = (" \(item.sectionTitle)")
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 36
    }
    
}
