//
//  ViewController.swift
//  Chico
//
//  Created by Alessandro Dovere on 22/11/22.
//

import UIKit
import SwiftUI

class FirstViewController: UIViewController {
    @IBOutlet weak private var collectionView: UICollectionView!
    private let sectionInsets = UIEdgeInsets(top: 6.0, left: 6.0, bottom: 6.0, right: 6.0)
    var dataSource: UICollectionViewDiffableDataSource<Sections, Breed>! = nil

    let network = DogBreedsApi()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        network.getBreeds()
        print(network.breeds)
    }
}

