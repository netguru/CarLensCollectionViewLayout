//
//  CarLensCollectionViewCell.swift
//  CarLensCollectionViewCell
//
//  Copyright © 2018 Netguru. All rights reserved.
//


import UIKit.UICollectionView

open class CarLensCollectionViewCell: UICollectionViewCell {
    
    /// Indicates if the cell is currently displayed as primary cell.
    public var isCurrentlyPrimary = false
    
    /// The upper view of the cell.
    public var topView: UIView!
    
    /// The bottom view of the cell.
    public var cardView: UIView!

    private let topViewHeight: CGFloat = UIScreen.main.bounds.height > 568 ? 200 : 170
    
    /// Configuration of the cell. Must be called on a start.
    ///
    /// - Parameters:
    ///   - topView: The upper view of the cell.
    ///   - cardView: The bottom view of the cell.
    open func configure(topView: UIView, cardView: UIView) {
        self.topView = topView
        self.cardView = cardView
        setupView()
    }
    
    private func animateViews(toProgress progress: Double) {
        let offset = topViewHeight - (CGFloat(progress) * topViewHeight)
        cardView.transform = .init(translationX: 0, y: -offset)
    }
    
    private func setupView() {
        [topView, cardView].forEach(contentView.addSubview)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: topAnchor),
            topView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: topViewHeight),
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardView.topAnchor.constraint(equalTo: topView.bottomAnchor)
        ])
    }
    
    /// - SeeAlso: UICollectionViewCell
    open override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        guard let attributes = layoutAttributes as? CarLensLayoutAttributes else { return }
        isCurrentlyPrimary = !(attributes.progress == 0)
        animateViews(toProgress: attributes.progress)
    }
}
