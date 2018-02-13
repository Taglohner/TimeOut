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
    var business: [Business]?
    
    static func sampleCategories() -> [Category] {
        
        var restaurants = [Business]()
        
        /* --------- new category --------- */
        var sponseredRestaurantCategory = Category()
        sponseredRestaurantCategory.name = "Restaurants"
        
        var ippudo = Business()
        ippudo.id = 1
        ippudo.name = "Ippudo"
        ippudo.category = "Restaurants"
        ippudo.imageName = ""
        ippudo.description = "Ippudo is a Japanese style restaurant founded"
        restaurants.append(ippudo)
        
        var itsu = Business()
        itsu.id = 2
        itsu.name = "Itsu"
        itsu.category = "Restaurants"
        itsu.imageName = ""
        itsu.description = "itsu is a Japanese style restaurant founded"
        restaurants.append(itsu)
        
        var wagamama = Business()
        wagamama.id = 1
        wagamama.name = "wagamama"
        wagamama.category = "Restaurants"
        wagamama.imageName = ""
        wagamama.description = "wagamama is a Japanese style restaurant founded"
        restaurants.append(wagamama)
        
        var kfc = Business()
        kfc.id = 1
        kfc.name = "kfc"
        kfc.category = "Restaurants"
        kfc.imageName = ""
        kfc.description = "kfc is a Japanese style restaurant founded"
        restaurants.append(kfc)
        
        var dominos = Business()
        dominos.id = 1
        dominos.name = "dominos"
        dominos.category = "Restaurants"
        dominos.imageName = ""
        dominos.description = "dominos is a Japanese style restaurant founded"
        restaurants.append(dominos)
        
        var mcdonalds = Business()
        mcdonalds.id = 1
        mcdonalds.name = "mcdonalds"
        mcdonalds.category = "Restaurants"
        mcdonalds.imageName = ""
        mcdonalds.description = "mcdonalds is a Japanese style restaurant founded"
        restaurants.append(mcdonalds)
        
        sponseredRestaurantCategory.business = restaurants
        
        /* --------- new category --------- */
        
        var pubs = [Business]()
        var sponseredPubsCategory = Category()
        sponseredPubsCategory.name = "Pubs"
        
        var sherlock = Business()
        sherlock.id = 1
        sherlock.name = "Sherlock"
        sherlock.category = "Pubs"
        sherlock.imageName = ""
        sherlock.description = "Sherlock was founded in 1982"
        pubs.append(sherlock)
        sponseredPubsCategory.business = pubs
        
        var theworldsend = Business()
        theworldsend.id = 2
        theworldsend.name = "The Worlds End"
        theworldsend.category = "Pubs"
        theworldsend.imageName = ""
        theworldsend.description = "The Worlds End was founded in 1982"
        pubs.append(theworldsend)
        
        var thechappel = Business()
        thechappel.id = 3
        thechappel.name = "The Chappel"
        thechappel.category = "Pubs"
        thechappel.imageName = ""
        thechappel.description = "The Chappel was founded in 1982"
        pubs.append(thechappel)
        
        var bierhoff = Business()
        bierhoff.id = 4
        bierhoff.name = "Bier Hoff"
        bierhoff.category = "Pubs"
        bierhoff.imageName = ""
        bierhoff.description = "Bier Hoff was founded in 1982"
        pubs.append(bierhoff)
        
        var yellowhouse = Business()
        yellowhouse.id = 5
        yellowhouse.name = "Yellow House"
        yellowhouse.category = "Pubs"
        yellowhouse.imageName = ""
        yellowhouse.description = "Yellow House was founded in 1982"
        pubs.append(yellowhouse)
        
        sponseredPubsCategory.business = pubs

        return [sponseredRestaurantCategory, sponseredPubsCategory]
    }
}

struct Business {
    var id: Int?
    var name: String?
    var category: String?
    var imageName: String?
    var description: String?
}
