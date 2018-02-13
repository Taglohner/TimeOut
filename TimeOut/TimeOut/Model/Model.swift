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
    var restaurants: [Restaurant]?
    
    static func sampleCategories() -> [Category] {
        
        /* --------- new category --------- */
        
        var sponsoredRestaurants = [Restaurant]()
        var sponsoredRestaurantsCategory = Category()
        sponsoredRestaurantsCategory.name = "Sponsored Restaurants"
        
        var ippudo = Restaurant()
        ippudo.id = 1
        ippudo.name = "Ippudo"
        ippudo.category = RestaurantCategory.japanese
        ippudo.imageName = ""
        ippudo.description = "Ippudo is a Japanese style restaurant"
        ippudo.rating = 9.0
        sponsoredRestaurants.append(ippudo)
        
        var wagamama = Restaurant()
        wagamama.id = 1
        wagamama.name = "Wagamama"
        wagamama.category = RestaurantCategory.japanese
        wagamama.imageName = ""
        wagamama.description = "Wagamama is a Japanese style restaurant"
        wagamama.rating = 9.0
        sponsoredRestaurants.append(wagamama)
        
        var bananatree = Restaurant()
        bananatree.id = 1
        bananatree.name = "Banana Tree"
        bananatree.category = RestaurantCategory.indian
        bananatree.imageName = ""
        bananatree.description = "Banana Tree is a indian style restaurant"
        bananatree.rating = 9.0
        sponsoredRestaurants.append(bananatree)
        
        sponsoredRestaurantsCategory.restaurants = sponsoredRestaurants
        
        
        /* --------- new category --------- */
        
        var bestRatedRestaurants = [Restaurant]()
        var bestRatedRestaurantsCategory = Category()
        bestRatedRestaurantsCategory.name = "Best Rated"
        
        var itsu = Restaurant()
        itsu.id = 1
        itsu.name = "Itsu"
        itsu.category = RestaurantCategory.japanese
        itsu.imageName = ""
        itsu.description = "Itsu is a Japanese style restaurant"
        bestRatedRestaurants.append(itsu)
        
        var yazuSushi = Restaurant()
        yazuSushi.id = 1
        yazuSushi.name = "Yazu Sushi"
        yazuSushi.category = RestaurantCategory.japanese
        yazuSushi.imageName = ""
        yazuSushi.description = "Itsu is a Japanese style restaurant"
        bestRatedRestaurants.append(yazuSushi)
        
        var honiPoke = Restaurant()
        honiPoke.id = 1
        honiPoke.name = "Honi Poke"
        honiPoke.category = RestaurantCategory.japanese
        honiPoke.imageName = ""
        honiPoke.description = "Itsu is a Japanese style restaurant"
        bestRatedRestaurants.append(honiPoke)
        
        bestRatedRestaurantsCategory.restaurants = bestRatedRestaurants
        
        return [sponsoredRestaurantsCategory, bestRatedRestaurantsCategory]
    }
}

struct Restaurant {
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
