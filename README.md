# CarLensCollectionViewLayout

![](https://img.shields.io/badge/swift-4.2-orange.svg)
![](https://img.shields.io/badge/cocoapods-compatible-green.svg)
![](https://img.shields.io/badge/carthage-compatible-green.svg)
![](https://app.bitrise.io/app/23a07b63b3f55f97/status.svg?token=Rt_2gKUavbR8LQ7PVuTbYg&branch=master)

An easy-to-use Collection View Layout for card-like animation 🎉

<p align="center">
	<img src="https://user-images.githubusercontent.com/18245585/50694808-2b795e80-103b-11e9-839d-f2d8dc533bb4.gif" width="250">
</p>

*CarLensCollectionViewLayout* was created out of the implementation in [**CarLens** application 🚘](https://github.com/netguru/car-recognition-ios). The image above exactly shows the screen from the app! 

## Requirements

*CarLensCollectionViewLayout* is written in **Swift 4.2** and supports **iOS 9.0+**.


## Usage

### Basic Usage

The two main steps are needed for the configuration of *CarLensCollectionViewLayout*:

#### Step 1
Assign `CarLensCollectionViewLayout` to yours collection view layout:
```swift
collectionView.collectionViewLayout = CarLensCollectionViewLayout()
```
or initialize your collection view with `CarLensCollectionViewLayout`:
```swift
UICollectionView(frame: .zero, collectionViewLayout: CarLensCollectionViewLayout())
```

#### Step 2
Subsclass `CarLensCollectionViewCell` and call `configure(topView: UIView, cardView: UIView)` during the cell’s initialization:
```swift
class CollectionViewCell: CarLensCollectionViewCell {
    override init(frame: CGRect) {
	super.init(frame: frame)
	configure(topView: upperView, cardView: bottomView)
    }
}
```
The sample implementation is available in [Demo](CarLensCollectionViewLayoutDemo) project.

### Customization

#### Layout
You can also initialize `CarLensCollectionViewLayout` with a `CarLensCollectionViewLayoutOptions` object by passing any of the parameters available. Others will be configured automatically.

**Parameters:**

`minimumSpacing` - A minimum spacing between cells.

`decelerationRate` - A deceleration for a scroll view.

`shouldShowScrollIndicator` - A value indicating whether collection view should have a scroll indicator.

`itemSize` - The size to use for cells.

Example:
```swift
let options = CarLensCollectionViewLayoutOptions(minimumSpacing: 40)
collectionView.collectionViewLayout = CarLensCollectionViewLayout(options: options)
```

#### Cell
While subsclassing `CarLensCollectionViewCell` you can call `configure(...)` with an additional parameter `topViewHeight`. The card view height will be calculated based on this value.

Example:
```swift
class CollectionViewCell: CarLensCollectionViewCell {
    override init(frame: CGRect) {
	super.init(frame: frame)
	configure(topView: upperView, cardView: bottomView, topViewHeight: 300)
    }
}
```
<p align="center">
<img src="https://user-images.githubusercontent.com/18245585/51251539-dd991a80-1999-11e9-8c60-702310ad4dc4.gif" height="500">	<img src="https://user-images.githubusercontent.com/18245585/51251540-dd991a80-1999-11e9-83f3-432357d7aa22.gif" height="500">
	<img src="https://user-images.githubusercontent.com/18245585/51251541-de31b100-1999-11e9-9e49-07a3cf5d425b.gif" height="500">
</p>

## Installation

### CocoaPods

If you're using [CocoaPods](http://cocoapods.org), add the following dependency to your `Podfile`:

```none
use_frameworks!
pod 'CarLensCollectionViewLayout', '~> 1.2.0'
```

### Carthage

If you're using [Carthage](https://github.com/Carthage/Carthage), add the following dependency to your `Cartfile`:

```none
github "netguru/CarLensCollectionViewLayout" ~> 1.2.0
```

## About

This project is made with ❤️ by [Netguru](https://netguru.co) and maintained by [Anna-Mariia Shkarlinska](https://github.com/anyashka).

### License

*CarLensCollectionViewLayout* is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for more info.

## Read More

- [Introducing CarLensCollectionViewLayout - a New Open Source iOS Tool by Netguru](https://www.netguru.com/codestories/introducing-carlenscollectionviewlayout-a-new-open-source-ios-tool-by-netguru)
- [How We Built CarLens](https://www.netguru.com/blog/machine-learning-and-augmented-reality-combined-in-one-sleek-mobile-app-how-we-built-car-lens)

## Related Links

- [CarLens Page](https://www.netguru.com/carlens)
- [CarLens iOS](https://github.com/netguru/CarLens-iOS)
- [CarLens in App Store](https://itunes.apple.com/us/app/carlens/id1417168518?mt=8)
- [CarLens Android](https://github.com/netguru/CarLens-Android)
- [CarLens on Google Play](https://play.google.com/store/apps/details?id=co.netguru.android.carrecognition&hl=en)
