//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Max on 25.10.2022.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = [
        "McDonalds", "BurgerKing", "Saurma",
        "Gaga", "LKafa", "OnePrice",
        "Velmart", "Silpo", "Aushan",
        "Vkusno i sitno", "Borch", "PubBeer",
        "VeryWell", "Mafia", "Bistro",
        "Fransya", "Lviv Kruasan", "Chudo Pekarnya"
    ]
    
    func savePlaces() {
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageDate = image?.pngData() else { return }
           
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Kiev"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageDate
            
            StorageManager.saveObject(newPlace)
        }
    }
}
