# Swift Library for EmojiOne

Please &#9733; this library.

This EmojiOne library helps you use icons from [EmojiOne](https://emojione.com).

EmojiOne library currently supports `UIImageView` and `UILabel`.

## Requirements

- iOS 8.0+
- Xcode 8

## Installation

### Manually

Copy the file from `Sources` folder.

[Link to file](https://github.com/ranesr/EmojiOne/tree/master/Sources).

## Usage

### UIImageView

```Swift

// Setting emoji to image view
imageView.setEmoji(.speechLeft)
imageView.setEmoji(.womanRowingBoat)

```

### UILabel

```Swift

// Setting emoji to label
label.setEmoji("PREFIX TEXT ", .manFarmerTone4, " POSTFIX TEXT")
label.setEmoji("", .flashlight, " POSTFIX TEXT")
label.setEmoji("PREFIX TEXT ", .cruiseShip, "")

```

## Author

Saurabh Rane

- [Email](mailto:saurabhrrane@gmail.com)
- [LinkedIn](https://linkedin.com/in/ranesaurabh)

## Licence

EmojiOne is available under the MIT License. See the `LICENSE` file for more info.
