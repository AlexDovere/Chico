//
//  ViewController.swift
//  Chico
//
//  Created by Alessandro Dovere on 22/11/22.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var viewBackground: UIView!
//    @IBOutlet weak var label: UILabel!
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
    }
}

