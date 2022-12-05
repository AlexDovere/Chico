//
//  DogsModel.swift
//  Chico
//
//  Created by Alessandro Dovere on 30/11/22.
//
import Foundation

// MARK: - DogBreeds
struct DogBreeds: Codable {
    let message: [String: [String]]
    let status: String
}

struct Breed {
    var name: String
    var subBreeds: [String]

    init(name: String, subBreeds: [String]) {
        self.name = name
        self.subBreeds = subBreeds
    }
}
