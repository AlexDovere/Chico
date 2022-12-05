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
        guard let url = URL(string: "https://dog.ceo/api/breeds/list/all") else { fatalError()}
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {return}
            let dogBreeds = try? JSONDecoder().decode(DogBreeds.self, from: data)
            dogBreeds?.message.forEach({ (breed, subBreeds) in
            let item = Breed(name: breed, subBreeds: subBreeds)
                self.breeds.append(item)
            })

            self.breeds
                .sorted(by: { a, b in
                    a.name < b.name
                })
                .forEach({ breed in
                print(breed)
            })
        }
        task.resume()
    }
}
