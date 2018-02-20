
import Foundation

struct RestaurantCategory {
    var restaurants: [Restaurant]?
    
    static func restaurantsSampleData() -> [Restaurant] {
        
        var restaurants = [Restaurant]()
        
        var ippudo = Restaurant()
        ippudo.id = 1
        ippudo.name = "Ippudo"
        ippudo.cousine = .japanese
        ippudo.imageName = "mobile_picture_02202018_222018"
        ippudo.description = "Ippudo is a Japanese style restaurant"
        ippudo.rating = 9.0
        restaurants.append(ippudo)
        
        var wagamama = Restaurant()
        wagamama.id = 1
        wagamama.name = "Wagamama"
        wagamama.cousine = .japanese
        wagamama.imageName = "mobile_picture_02202018_232948"
        wagamama.description = "Wagamama is a Japanese style restaurant"
        wagamama.rating = 9.0
        restaurants.append(wagamama)
        
        var bananatree = Restaurant()
        bananatree.id = 1
        bananatree.name = "Banana Tree"
        bananatree.cousine = .indian
        bananatree.imageName = "mobile_picture_02202018_233153"
        bananatree.description = "Banana Tree is a indian style restaurant"
        bananatree.rating = 9.0
        restaurants.append(bananatree)
        
        var itsu = Restaurant()
        itsu.id = 1
        itsu.name = "Itsu"
        itsu.cousine = .japanese
        itsu.imageName = "mobile_picture_02202018_233519"
        itsu.description = "Itsu is a Japanese style restaurant"
        restaurants.append(itsu)
        
        var yazuSushi = Restaurant()
        yazuSushi.id = 1
        yazuSushi.name = "Yazu Sushi"
        yazuSushi.cousine = .japanese
        yazuSushi.imageName = nil
        yazuSushi.description = "Itsu is a Japanese style restaurant"
        restaurants.append(yazuSushi)
        
        var honiPoke = Restaurant()
        honiPoke.id = 1
        honiPoke.name = "Honi Poke"
        honiPoke.cousine = .japanese
        honiPoke.imageName = nil
        honiPoke.description = "Itsu is a Japanese style restaurant"
        restaurants.append(honiPoke)
        
        return restaurants
    }
}

struct Restaurant {
    var id: Int?
    var name: String?
    var cousine: RestaurantCousine?
    var imageName: String?
    var description: String?
    var rating: Float?
}

enum RestaurantCousine {
    case japanese
    case italian
    case british
    case greek
    case indian
}








