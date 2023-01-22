//
//  DogBreedsApi.swift
//  Chico
//
//  Created by Alessandro Dovere on 05/12/22.
//

import Foundation

class DogBreedsApi {
   @Published var breeds = [Breed]()

    public func getBreeds() {
        guard let url = URL(string: "https://dog.ceo/api/breeds/list/all") else { fatalError() }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {return}
            let dogBreeds = try? JSONDecoder().decode(DogBreeds.self, from: data)
            dogBreeds?.message.forEach({ (breed, subBreeds) in
                self.getImagesFor(breed) { breedImages in
                    let item = Breed(name: breed, subBreeds: subBreeds, images: breedImages)
                    self.breeds.append(item)
                    print(item)
                }
            })
        }
        task.resume()
    }

    public func getImagesFor(_ breed: String, completionBlock: @escaping ([String]) -> Void) -> Void {

        guard let url = URL(string: "https://dog.ceo/api/breed/\(breed)/images") else { fatalError() }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            if error != nil {
                print(error ?? "Error unknown")
            } else {
                let dogImages = try? JSONDecoder().decode(DogImages.self, from: data)
                completionBlock(dogImages?.message ?? [""])
            }
        }
        task.resume()
    }
}
