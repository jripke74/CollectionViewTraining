//
//  ViewController.swift
//  CollectionViewTraining
//
//  Created by Jeff Ripke on 2/18/18.
//  Copyright © 2018 Jeff Ripke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var collectionVeiw: UICollectionView!
    
    var collectionData = ["1 😀", "2 😩", "3 🤑", "4 🤫", "5 😫", "6 😚", "7 😱", "8 😪", "9 ☹️", "10 😵", "11 🤫", "12 😁"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = (view.frame.size.width - 20) / 3
        let layout = collectionVeiw.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = collectionData[indexPath.row]
        }
        return cell
    }
}
