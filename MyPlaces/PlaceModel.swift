//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Max on 25.10.2022.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
        "McDonalds", "BurgerKing", "Saurma",
        "Gaga", "LKafa", "OnePrice",
        "Velmart", "Silpo", "Aushan",
        "Vkusno i sitno", "Borch", "PubBeer",
        "VeryWell", "Mafia", "Bistro",
        "Fransya", "Lviv Kruasan", "Chudo Pekarnya"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Kiev", type: "Restaurant", image: place))
        }
        
        return places
    }
}