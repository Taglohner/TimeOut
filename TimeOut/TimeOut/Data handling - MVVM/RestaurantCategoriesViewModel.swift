
import UIKit
import Hero

class RestaurantCategoryViewModel: NSObject {
    var items = [RestaurantCategoryViewModelItem]()
    
    override init() {
        super.init()
        
        items.append(ViewModelItemTypeBestRated(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestValue(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeOffers(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeSponsored(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeBestValue(restaurants: RestaurantCategory.restaurantsSampleData()))
        items.append(ViewModelItemTypeOffers(restaurants: RestaurantCategory.restaurantsSampleData()))
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
            
        case .offers:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "offersStyleCell", for: indexPath) as! OffersStyleCell
            cell.item = item
            return cell
        }
    }
}
