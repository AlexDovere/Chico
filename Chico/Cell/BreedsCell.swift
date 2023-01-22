//
//  BreedsCell.swift
//  Chico
//
//  Created by Alessandro Dovere on 11/01/23.
//

import Foundation
import UIKit

class BreedsCell: UICollectionViewCell {
    @IBOutlet weak private var image: UIImageView!
    @IBOutlet weak private var breedLabel: UILabel!

    func setup(with viewModel: BreedsCellViewModel){
        self.image.image = UIImage()
    }
}

struct BreedsCellViewModel {
    var imageName: String
    var breedName: String

    init(imageName: String, breedName: String) {
        self.imageName = imageName
        self.breedName = breedName
    }
}
