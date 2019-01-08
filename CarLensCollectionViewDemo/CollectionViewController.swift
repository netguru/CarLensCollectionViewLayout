//
//  ViewController.swift
//  Example
//
//  Created by Anna on 08/01/2019.
//  Copyright © 2019 Netguru. All rights reserved.
//

import UIKit
import CarLensCollectionViewLayout

class CollectionViewController: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.collectionViewLayout = CarLensCollectionViewLayout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}

