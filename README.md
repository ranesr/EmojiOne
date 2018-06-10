# Swift Library for EmojiOne


[![EmojiOne](https://img.shields.io/badge/%20EmojiOne-3.1-blue.svg)](https://github.com/emojione/emojione) [![CocoaPods](https://img.shields.io/cocoapods/v/EmojiOne.svg)](https://cocoapods.org/pods/EmojiOne)  [![Platform](https://img.shields.io/cocoapods/p/EmojiOne.svg)](http://cocoadocs.org/docsets/EmojiOne)  ![Swift](https://img.shields.io/badge/%20in-swift%204.0-orange.svg)  [![Codebeat Badge](https://codebeat.co/badges/b9a042f6-15ca-4d3d-b272-815871ea5388)](https://codebeat.co/projects/github-com-ranesr-emojione-master)

[![Travis](https://img.shields.io/travis/ranesr/EmojiOne.svg)](https://travis-ci.org/ranesr/EmojiOne/)


Please &#9733; this library.

This EmojiOne library helps you use icons from [EmojiOne](https://emojione.com).

EmojiOne library currently supports `UIImageView`, `UILabel` and `UIButton`.


## Requirements

- iOS 8.0+
- Xcode 8


## Installation


### Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

Make sure you have the latest version of CocoaPods by running:

```bash
$ gem install cocoapods
# (or if the above fails)
$ sudo gem install cocoapods
```

Update your local specs repo by running:

```bash
$ pod repo update
```

Add the following lines to your `Podfile`:

```ruby
target 'YourAwesomeProject' do
    use_frameworks!
    pod 'EmojiOne', '~> 2.0.0'
end
```

Then run the following command

```bash
$ pod install
```

You can start using the library by importing it wherever you want

```swift
import EmojiOne
```


### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `EmojiOne` by adding the proper description to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "YourAwesomeProject",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/ranesr/EmojiOne", majorVersion: 2)
    ]
)
```

Note that the [Swift Package Manager](https://swift.org/package-manager) is still in early design and development, for more information checkout its [GitHub Page](https://github.com/apple/swift-package-manager)


### Manually

Copy this file from `Sources` folder.

[EmojiOne.swift](https://github.com/ranesr/EmojiOne/blob/master/Sources/EmojiOne.swift)


## Usage


### UIImageView

```Swift

// Setting emoji to image view
imageView.setEmoji(emoji: .speechLeft)
imageView.setEmoji(emoji: .womanRowingBoat)

```

### UILabel

```Swift

// Setting emoji to label
label.setEmoji(prefixText: "PREFIX TEXT ", emoji: .manFarmerTone4, postfixText: " POSTFIX TEXT")
label.setEmoji(prefixText: "", emoji: .flashlight, postfixText: " POSTFIX TEXT")
label.setEmoji(prefixText: "PREFIX TEXT ", emoji: .cruiseShip, postfixText: "")

```

### UIButton

```Swift

// Setting emoji to label
button.setEmoji(title: " TITLE", emoji: .clock12, forState: .normal)

```


## Examples

Please check out the [EmojiOne App](https://github.com/ranesr/EmojiOne/tree/master/EmojiOne).


## Author

Saurabh Rane

- [Email](mailto:saurabhrrane@gmail.com)
- [LinkedIn](https://linkedin.com/in/ranesaurabh)

## Licence

EmojiOne is available under the MIT License. See the `LICENSE` file for more info.
