//
//  ViewController.swift
//  Chico
//
//  Created by Alessandro Dovere on 22/11/22.
//

import UIKit

class ViewControllerTest: UIViewController {
    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var label: UILabel!
    let network = DogBreedsApi()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        network.getBreeds()
        label.text = "Test 1"
        label.font = .systemFont(ofSize: 40)
    }
}

