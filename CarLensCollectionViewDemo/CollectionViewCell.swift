//
//  CollectionViewCell.swift
//  CarLensCollectionViewDemo
//
//  Created by Anna on 08/01/2019.
//  Copyright © 2019 Netguru. All rights reserved.
//

import Foundation
import CarLensCollectionViewLayout

class CollectionViewCell: CarLensCollectionViewCell {
    
    private var upperView: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .center
        label.textColor = .white
        label.text = "CarLens"
        return label
    }()
    
    private var bottomView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure(topView: upperView, cardView: bottomView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
