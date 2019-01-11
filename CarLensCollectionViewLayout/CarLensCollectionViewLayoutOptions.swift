//
//  CarLensCollectionViewLayoutOptions.swift
//  CarLensCollectionViewLayout
//
//  Copyright © 2019 Netguru. All rights reserved.
//

import Foundation

/// The optional configuration of CarLensCollectionViewLayout.
public struct CarLensCollectionViewLayoutOptions {
    
    /// A minimum spacing between cells.
    let minimumSpacing: CGFloat
    
    /// A deceleration for a scroll view.
    let decelerationRate: UIScrollView.DecelerationRate
    
    /// A value indicating whether collection view should have a scroll indicator.
    let shouldShowScrollIndicator: Bool
    
    /// The initialization of the optional layout configuration.
    ///
    /// - Parameters:
    ///   - minimumSpacing: A minimum spacing between cells. The default value is `20`.
    ///   - decelerationRate: A deceleration for a scroll view. The default value is `.fast`.
    ///   - shouldShowScrollIndicator: A value indicating whether collection view should have a scroll indicator. The default value is `false`.
    public init(minimumSpacing: CGFloat = 20, decelerationRate: UIScrollView.DecelerationRate = UIScrollView.DecelerationRate.fast, shouldShowScrollIndicator: Bool = false) {
        self.minimumSpacing = minimumSpacing
        self.decelerationRate = decelerationRate
        self.shouldShowScrollIndicator = shouldShowScrollIndicator
    }

}
