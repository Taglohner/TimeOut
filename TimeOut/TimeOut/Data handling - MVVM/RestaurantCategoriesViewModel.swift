
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
            
            var restaurant: Restaurant?
            
            if let item = item as? ViewModelItemTypeBestValue {
                restaurant = item.restaurants[indexPath.row]
            }
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeRegularTableViewCell", for: indexPath) as! HomeRegularTableViewCell
            cell.restaurant = restaurant
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
            return 246
        case .bestValue:
            return 264
        case .sponsored:
            return 246
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HomeHeader") as! HomeHeader
        header.headerTitle = items[section].sectionTitle
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.section]
        
        switch item.type {
            
        case .bestRated:
            print("bla")
        case .bestValue:
            print("bla")
        case .sponsored:
            print("bla")
        }
    }
}
