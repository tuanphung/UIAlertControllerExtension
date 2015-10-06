#UIAlertControllerExtension
An extension is written in Swift, 

Allow to present a UIAlertController from any ViewController or anywhere.

Support both Alert & ActionSheet style.

## Requirements
- iOS 8.0+ / Mac OS X 10.9+
- Xcode 6.4

## Installation
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```
To integrate UIAlertControllerExtension into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'UIAlertControllerExtension', '~> 1.0'
```

Then, run the following command:

```bash
$ pod install
```

## Usage

### Presenting a Default Alert
```swift
import UIAlertControllerExtension

UIAlertController.present(title: "Title", message: "Message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
   //Handle event callback
   println(action.title)
}
```
### Presenting an Attributed Alert
```swift
import UIAlertControllerExtension

UIAlertController.present(title: "title",
                  message: "message", 
                  attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)])  
                  { (action) -> () in
                      //Handle event callback
                      println(action.title)
}
```

### Presenting a Default ActionSheet
```swift
import UIAlertControllerExtension

UIAlertController.present(style: .ActionSheet, title: "Title", message: "Message", actionTitles: ["OK", "Cancel", "Destroy"]) { (action) -> () in
   //Handle event callback
   println(action.title)
}
```
### Presenting an Attributed ActionSheet
```swift
import UIAlertControllerExtension

UIAlertController.present(style: .ActionSheet,
                  title: "title",
                  message: "message", 
                  attributedActionTitles: [("OK", .Default), ("Cancel", .Cancel), ("Destroy", .Destructive)])  
                  { (action) -> () in
                      //Handle event callback
                      println(action.title)
}
```

## License

UIAlertControllerExtension is released under the MIT license. See LICENSE for details.
