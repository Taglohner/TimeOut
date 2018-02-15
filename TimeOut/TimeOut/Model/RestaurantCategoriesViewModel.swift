
import Foundation
import UIKit

class RestaurantCategoryViewModel: NSObject {
    var items = [RestaurantCategoryViewModelItem]()
    
    override init() {
        super.init()
        items.append(ViewModelItemTypeBestRated(restaurants: RestaurantCategory.restaurantsSampleData()))
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
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
            cell.item = item
            return cell
            
        case .sponsored:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCollectionViewCell", for: indexPath) as! HomeTableCollectionViewCell
            cell.item = item
            return cell
        }
    }
    
    
    
}

