//
//  Model.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 08/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import Foundation

struct Category {
    var name: String?
    var restaurants: [Restaunt]?
    
    static func sampleCategories() -> [Category] {
        
        /* --------- new category --------- */
        
        var sponsoredRestaurants = [Restaunt]()
        var sponsoredRestaurantsCategory = Category()
        sponsoredRestaurantsCategory.name = "Sponsored Restaurants"
        
        var ippudo = Restaunt()
        ippudo.id = 1
        ippudo.name = "Ippudo"
        ippudo.category = RestaurantCategory.japanese
        ippudo.imageName = ""
        ippudo.description = "Ippudo is a Japanese style restaurant"
        ippudo.rating = 9.0
        sponsoredRestaurants.append(ippudo)
        
        var wagamama = Restaunt()
        wagamama.id = 1
        wagamama.name = "Wagamama"
        wagamama.category = RestaurantCategory.japanese
        wagamama.imageName = ""
        wagamama.description = "Wagamama is a Japanese style restaurant"
        wagamama.rating = 9.0
        sponsoredRestaurants.append(wagamama)
        
        var bananatree = Restaunt()
        bananatree.id = 1
        bananatree.name = "Banana Tree"
        bananatree.category = RestaurantCategory.indian
        bananatree.imageName = ""
        bananatree.description = "Banana Tree is a indian style restaurant"
        bananatree.rating = 9.0
        sponsoredRestaurants.append(bananatree)
        
        sponsoredRestaurantsCategory.restaurants = sponsoredRestaurants
        
        
        /* --------- new category --------- */
        
        var bestRatedRestaurants = [Restaunt]()
        var bestRatedRestaurantsCategory = Category()
        bestRatedRestaurantsCategory.name = "Best Rated"
        
        var itsu = Restaunt()
        itsu.id = 1
        itsu.name = "Itsu"
        itsu.category = RestaurantCategory.japanese
        itsu.imageName = ""
        itsu.description = "Itsu is a Japanese style restaurant"
        bestRatedRestaurants.append(itsu)
        
        bestRatedRestaurantsCategory.restaurants = bestRatedRestaurants
        
        return [sponsoredRestaurantsCategory, bestRatedRestaurantsCategory]
    }
}

struct Restaunt {
    var id: Int?
    var name: String?
    var category: RestaurantCategory?
    var imageName: String?
    var description: String?
    var rating: Float?
}

enum RestaurantCategory {
    case japanese
    case italian
    case british
    case greek
    case indian
}
