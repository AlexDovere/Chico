//
//  Model.swift
//  Chico
//
//  Created by Alessandro Dovere on 11/01/23.
//
import UIKit

class Sections: Hashable {
    var identifier = UUID()
    var title: String
    var breed: Breed

    init(title: String, breed: Breed) {
        self.title = title
        self.breed = breed
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }

    static func == (lhs: Sections, rhs: Sections) -> Bool {
        lhs.breed.name == rhs.breed.name
    }
}
