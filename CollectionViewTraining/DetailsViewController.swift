//
//  DetailsViewController.swift
//  CollectionViewTraining
//
//  Created by Jeff Ripke on 2/18/18.
//  Copyright © 2018 Jeff Ripke. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selection: String!
    @IBOutlet private weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = selection
    }
}
