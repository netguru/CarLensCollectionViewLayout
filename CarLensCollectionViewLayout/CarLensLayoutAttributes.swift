//
//  CarLensLayoutAttributes.swift
//  CarLensLayoutAttributes
//
//  Copyright © 2018 Netguru. All rights reserved.
//


import UIKit

final class CarLensLayoutAttributes: UICollectionViewLayoutAttributes {
    
    /// Progress towards the center of the screen, value between 0 and 1.
    var progress = 0.0
    
    /// SeeAlso: UICollectionViewLayoutAttributes
    override func copy(with zone: NSZone?) -> Any {
        let attributes = super.copy(with: zone)
        (attributes as? CarLensLayoutAttributes)?.progress = progress
        return attributes
    }
    
    /// SeeAlso: UICollectionViewLayoutAttributes
    override func isEqual(_ object: Any?) -> Bool {
        guard let attributes = object as? CarLensLayoutAttributes,
            attributes.progress == progress else { return false }
        return super.isEqual(object)
    }
}
