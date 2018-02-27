
import Foundation

class ViewModelItemTypeBestRated: RestaurantCategoryViewModelItem {
    var type: CategoryModelItemType {
        return .bestRated
    }
    
    var sectionTitle: String {
        return "Best Rated"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var restaurants: [Restaurant]
    
    init(restaurants: [Restaurant]) {
        self.restaurants = restaurants
    }
}

class ViewModelItemTypeSponsored: RestaurantCategoryViewModelItem {
    var type: CategoryModelItemType {
        return .sponsored
    }
    
    var sectionTitle: String {
        return "Sponsored"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var restaurants: [Restaurant]
    
    init(restaurants: [Restaurant]) {
        self.restaurants = restaurants
    }
}

class ViewModelItemTypeBestValue: RestaurantCategoryViewModelItem {
    var type: CategoryModelItemType {
        return .bestValue
    }
    
    var sectionTitle: String {
        return "Best Value"
    }
    
    var rowCount: Int {
        return restaurants.count
    }
    
    var restaurants: [Restaurant]
    
    init(restaurants: [Restaurant]) {
        self.restaurants = restaurants
    }
}

class ViewModelItemTypeOffers: RestaurantCategoryViewModelItem {
    var type: CategoryModelItemType {
        return .offers
    }
    
    var sectionTitle: String {
        return "Offers"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var restaurants: [Restaurant]
    
    init(restaurants: [Restaurant]) {
        self.restaurants = restaurants
    }
}



