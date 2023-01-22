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

struct DogImages: Codable {
    var status: String
    var message: [String]
}

struct Breed: Hashable {
    var name: String
    var subBreeds: [String]
    var images: [String]

    init(name: String, subBreeds: [String], images: [String]) {
        self.name = name
        self.subBreeds = subBreeds
        self.images = images
    }
}
