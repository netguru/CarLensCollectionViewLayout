# CarLensCollectionViewLayout

![](https://img.shields.io/badge/swift-4.2-orange.svg)
![](https://img.shields.io/badge/cocoapods-compatible-green.svg)
![](https://img.shields.io/badge/carthage-compatible-green.svg)
![](https://app.bitrise.io/app/23a07b63b3f55f97/status.svg?token=Rt_2gKUavbR8LQ7PVuTbYg&branch=master)

An easy to use Collection View Layout for card-like animation 🎉

<p align="center">
	<img src="https://user-images.githubusercontent.com/18245585/50694808-2b795e80-103b-11e9-839d-f2d8dc533bb4.gif" width="250">
</p>

*CarLensCollectionViewLayout* was created out of the implementation in [**CarLens** application 🚘](https://github.com/netguru/car-recognition-ios). The image above exactly shows the screen from the app! 

## Requirements

*CarLensCollectionViewLayout* is written in **Swift 4.2** and supports **iOS 9.0+**.


## Usage

The two main steps are needed for the configuration of *CarLensCollectionViewLayout*:

### Step 1
Assign `CarLensCollectionViewLayout` to yours collection view layout:
```swift
collectionView.collectionViewLayout = CarLensCollectionViewLayout()
```
or initialize your collection view with `CarLensCollectionViewLayout`:
```swift
UICollectionView(frame: .zero, collectionViewLayout: CarLensCollectionViewLayout())
```

### Step 2
Subsclass `CarLensCollectionViewCell` and call `configure(topView: UIView, cardView: UIView)` right on the start!
```swift
class CollectionViewCell: CarLensCollectionViewCell {
    override init(frame: CGRect) {
	super.init(frame: frame)
	configure(topView: upperView, cardView: bottomView)
    }
}
```
The sample implementation is available in [Demo](CarLensCollectionViewDemo) project.

## Installation

### CocoaPods

If you're using [CocoaPods](http://cocoapods.org), add the following dependency to your `Podfile`:

```none
use_frameworks!
pod 'CarLensCollectionViewLayout', '~> 1.0.0'
```

### Carthage

If you're using [Carthage](https://github.com/Carthage/Carthage), add the following dependency to your `Cartfile`:

```none
github "netguru/CarLensCollectionViewLayout" ~> 1.0.0
```

## About

This project is made with ❤️ by [Netguru](https://netguru.co).

### License

*CarLensCollectionViewLayout* is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for more info.

## Related links

- [CarLens Page](https://www.netguru.com/carlens)
- [CarLens iOS](https://github.com/netguru/car-recognition-ios)
- [CarLens in App Store](https://itunes.apple.com/us/app/carlens/id1417168518?mt=8)
- [CarLens Android](https://github.com/netguru/car-recognition-android)
- [CarLens on Google Play](https://play.google.com/store/apps/details?id=co.netguru.android.carrecognition&hl=en)
- [CarLens Story on a Blog](https://www.netguru.com/blog/machine-learning-and-augmented-reality-combined-in-one-sleek-mobile-app-how-we-built-car-lens)
