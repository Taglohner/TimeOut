
import Foundation

protocol RestaurantCategoryViewModelItem {
    var type: CategoryModelItemType { get }
    var sectionTitle: String { get }
    var rowCount: Int { get }
}

extension RestaurantCategoryViewModelItem {
    var rowCount: Int {
        return 0
    }
}

enum CategoryModelItemType {
    case sponsored
    case bestValue
    case bestRated
    case offers
}
