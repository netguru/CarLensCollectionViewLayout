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
        let attributes = super.copy(with: zone)
        (attributes as? CarlensLayoutAttributes)?.progress = progress
        return attributes
    }
    
    /// SeeAlso: UICollectionViewLayoutAttributes
    override func isEqual(_ object: Any?) -> Bool {
        guard let attributes = object as? CarlensLayoutAttributes,
            attributes.progress == progress else { return false }
        return super.isEqual(object)
    }
}
