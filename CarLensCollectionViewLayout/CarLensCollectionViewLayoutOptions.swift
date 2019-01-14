//
//  CarLensCollectionViewLayoutOptions.swift
//  CarLensCollectionViewLayout
//
//  Copyright © 2019 Netguru. All rights reserved.
//

import UIKit

/// The optional configuration of CarLensCollectionViewLayout. Use this if you need to customize `CarLensCollectionViewLayout`.
public struct CarLensCollectionViewLayoutOptions {
    
    /// A minimum spacing between cells.
    let minimumSpacing: CGFloat
    
    /// A deceleration for a scroll view.
    let decelerationRate: UIScrollView.DecelerationRate
    
    /// A value indicating whether collection view should have a scroll indicator.
    let shouldShowScrollIndicator: Bool
    
    /// The size to use for cells.
    let itemSize: CGSize?
    
    /// The initialization of the optional layout configuration.
    /// You can initialize it with any of the parameters available. Others will be configured automatically.
    ///
    /// - Parameters:
    ///   - minimumSpacing: A minimum spacing between cells. The default value is `20`.
    ///   - decelerationRate: A deceleration for a scroll view. The default value is `.fast`.
    ///   - shouldShowScrollIndicator: A value indicating whether collection view should have a scroll indicator. The default value is `false`.
    ///   - itemSize: The size to use for cells. The default height is equal to a collection view height. The width is equal to the `collection view width - 60`.
    public init(minimumSpacing: CGFloat = 20, decelerationRate: UIScrollView.DecelerationRate = UIScrollView.DecelerationRate.fast, shouldShowScrollIndicator: Bool = false, itemSize: CGSize? = nil) {
        self.minimumSpacing = minimumSpacing
        self.decelerationRate = decelerationRate
        self.shouldShowScrollIndicator = shouldShowScrollIndicator
        self.itemSize = itemSize
    }

}
