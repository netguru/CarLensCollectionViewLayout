//
//  CarLensCollectionViewLayout.swift
//  CarLensCollectionViewLayout
//
//  Copyright © 2018 Netguru. All rights reserved.
//

import UIKit

public final class CarLensCollectionViewLayout: UICollectionViewFlowLayout {
    
    private var firstSetupDone = false
    
    private let options: CarLensCollectionViewLayoutOptions
    
    /// SeeAlso: UICollectionViewFlowLayout
    public override func prepare() {
        super.prepare()
        guard !firstSetupDone else { return }
        setup()
        firstSetupDone = true
    }
    
    
    /// The initialization of the CarLensCollectionViewLayout.
    ///
    /// - Parameters:
    ///   - options: An optional additional configuration of the layout.
    public init(options: CarLensCollectionViewLayoutOptions = CarLensCollectionViewLayoutOptions()) {
        self.options = options
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        self.options = CarLensCollectionViewLayoutOptions()
        super.init(coder: aDecoder)
    }
    
    private func setup() {
        guard let collectionView = collectionView else { return }
        scrollDirection = .horizontal
        minimumLineSpacing = options.minimumSpacing
        itemSize = options.itemSize ?? CGSize(width: collectionView.bounds.width - 60, height: collectionView.bounds.height)
        let sidesInset = (collectionView.bounds.width - itemSize.width) / 2
        let topAndBottomInset = (collectionView.bounds.height - itemSize.height) / 2
        collectionView.contentInset = .init(top: topAndBottomInset, left: sidesInset, bottom: topAndBottomInset, right: sidesInset)
        collectionView.decelerationRate = options.decelerationRate
        collectionView.showsHorizontalScrollIndicator = options.shouldShowScrollIndicator
    }
    
    /// SeeAlso: UICollectionViewFlowLayout
    public override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
    /// SeeAlso: UICollectionViewFlowLayout
    public override class var layoutAttributesClass: AnyClass {
        return CarLensLayoutAttributes.self
    }
    
    /// SeeAlso: UICollectionViewFlowLayout
    public override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let collectionView = collectionView, let allAttributes = super.layoutAttributesForElements(in: rect) else { return nil }
        for attributes in allAttributes {
            let collectionCenter = collectionView.bounds.size.width / 2
            let offset = collectionView.contentOffset.x
            let normalizedCenter = attributes.center.x - offset
            
            let maxDistance = itemSize.width + minimumLineSpacing
            let distanceFromCenter = min(collectionCenter - normalizedCenter, maxDistance)
            let ratio = (maxDistance - abs(distanceFromCenter)) / maxDistance
            let normalizedRatio = min(1, max(0, ratio))
            
            guard let attributes = attributes as? CarLensLayoutAttributes else { continue }
            attributes.progress = Double(normalizedRatio)
        }
        return allAttributes
    }
    
    /// SeeAlso: UICollectionViewFlowLayout
    public override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView, let layoutAttributes = layoutAttributesForElements(in: collectionView.bounds) else {
            return .init(x: 0, y: 0)
        }
        // Snapping closest cell to the center
        let centerOffset = collectionView.bounds.size.width / 2
        let offsetWithCenter = proposedContentOffset.x + (proposedContentOffset.x * velocity.x) + centerOffset
        let closestAttribute = layoutAttributes
            .sorted { abs($0.center.x - offsetWithCenter) < abs($1.center.x - offsetWithCenter) }
            .first ?? UICollectionViewLayoutAttributes()
        return CGPoint(x: closestAttribute.center.x - centerOffset, y: 0)
    }
}
