//
//  CarListLayoutAttributes.swift
//  CarRecognition
//


import UIKit

final class CarlensLayoutAttributes: UICollectionViewLayoutAttributes {
    
    /// Progress towards the center of the screen, value between 0 and 1.
    var progress = 0.0
    
    /// SeeAlso: UICollectionViewLayoutAttributes
    override func copy(with zone: NSZone?) -> Any {
        guard let attributes = super.copy(with: zone) as? CarlensLayoutAttributes else { return super.copy(with: zone) }
        attributes.progress = progress
        return attributes
    }
    
    /// SeeAlso: UICollectionViewLayoutAttributes
    override func isEqual(_ object: Any?) -> Bool {
        guard let attributes = object as? CarlensLayoutAttributes else { return false }
        guard attributes.progress == progress else { return false }
        return super.isEqual(object)
    }
}
