//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Max on 28.10.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place){
        
        try! realm.write {
            realm.add(place)
        }
    }
}
