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
    
    var upperView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    var bottomView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
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
