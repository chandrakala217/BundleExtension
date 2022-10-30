//
//  ViewController.swift
//  BundleExtension
//
//  Created by chandrakala pushpala on 10/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


struct AnimalResponseModel: Codable {
    var animal: [Animals]?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        animal = try container.decode([Animals].self)
    }
  
}

struct Animals: Codable {
    
    var id: String?
    var name: String?
    var headline: String?
    var description: String?
    var link: String?
    var image: String?
    var gallery: [String]?
    var fact: [String]?
}
